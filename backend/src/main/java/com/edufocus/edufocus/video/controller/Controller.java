package com.edufocus.edufocus.video.controller;

import java.util.Map;
import java.util.Random;

import com.edufocus.edufocus.lecture.entity.Lecture;
import com.edufocus.edufocus.lecture.entity.LectureDetailResponse;
import com.edufocus.edufocus.lecture.repository.LectureRepository;
import com.edufocus.edufocus.lecture.service.LectureService;
import com.edufocus.edufocus.registration.entity.RegistrationStatus;
import com.edufocus.edufocus.registration.service.RegistrationService;
import com.edufocus.edufocus.user.model.entity.User;
import com.edufocus.edufocus.user.model.entity.UserRole;
import com.edufocus.edufocus.user.model.repository.UserRepository;
import com.edufocus.edufocus.user.model.service.UserService;
import com.edufocus.edufocus.user.util.JWTUtil;
import com.edufocus.edufocus.video.dto.IdentityData;
import com.edufocus.edufocus.video.service.VideoSertvice;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.livekit.server.*;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import livekit.LivekitWebhook.WebhookEvent;


@RestController
@RequestMapping("/video")
@Slf4j
@RequiredArgsConstructor

public class Controller {
	private final JWTUtil jwtUtil;
	private final UserService userService;
	private final LectureService lectureService;
	private final VideoSertvice videoSertvice;
	private final RegistrationService registrationService;
	private final UserRepository userRepository;
	private final LectureRepository lectureRepository;
	@Value("${livekit.api.key}")
	private String LIVEKIT_API_KEY;

	@Value("${livekit.api.secret}")
	private String LIVEKIT_API_SECRET;
	private static final ObjectMapper objectMapper = new ObjectMapper();

	/**
	 * @param params JSON object with roomName and participantName
	 * @return JSON object with the JWT token
	 */
//	@PostMapping(value = "/token")
//	public ResponseEntity<Map<String, String>> createToken(@RequestBody Map<String, String> params) {
//		String roomName = params.get("roomName");
//		String participantName = params.get("participantName");
//
//		if (roomName == null || participantName == null) {
//			return ResponseEntity.badRequest().body(Map.of("errorMessage", "roomName and participantName are required"));
//		}
//
//		AccessToken token = new AccessToken(LIVEKIT_API_KEY, LIVEKIT_API_SECRET);
//		token.setName(participantName);
//		token.setIdentity(participantName);
//		token.addGrants(new RoomJoin(true), new RoomName(roomName));
//
//
//
//		return ResponseEntity.ok(Map.of("token", token.toJwt()));
//	}

	@PostMapping(value = "/makeroom/{lecture_id}")
	public ResponseEntity<String> startLecture(@PathVariable("lecture_id") Long id, HttpServletRequest request) throws Exception {


		String userToken = request.getHeader("Authorization");
		Long userId = Long.parseLong(jwtUtil.getUserId(userToken));


		videoSertvice.startOnline(userId, id);

		return new ResponseEntity<>("방만들기 성공",HttpStatus.OK);

	}
	public static String serializeIdentityData(IdentityData identityData) throws JsonProcessingException, JsonProcessingException {
		return objectMapper.writeValueAsString(identityData);
	}

	@PostMapping(value = "/joinroom/{lecture_id}")
	public ResponseEntity<Map<String, String>> joinRoom(@PathVariable("lecture_id") Long id, HttpServletRequest request) throws Exception
	{

		// 방 조인할떄 고려해야할점
		// 1. 신청됀 강의인지
		// 2. 그 강의기 On인지
		String userToken = request.getHeader("Authorization");


		Long userId = Long.parseLong(jwtUtil.getUserId(userToken));
		User findUser= userRepository.findById(userId).orElse(null);
		Lecture lecture= lectureRepository.findById(id).orElse(null);


		Random random = new Random();

		System.out.println();
		int randomNumber = 10000 + random.nextInt(80000);

		String randStr = String.valueOf(randomNumber);

		String roomName = lecture.getTitle();
		String participantName = userService.getUserName(userId);
		System.out.println(participantName);

		AccessToken token = new AccessToken(LIVEKIT_API_KEY, LIVEKIT_API_SECRET);


		if(findUser.getRole()==UserRole.ADMIN ){//&& lecture.isOnline() ) {



			IdentityData identityData = new IdentityData(participantName, "강사");
			String jsonIdentity = serializeIdentityData(identityData);



			token.setIdentity(jsonIdentity);
			token.setName(participantName);

			token.addGrants(new RoomJoin(true), new RoomName(roomName), new RoomCreate(true));

			videoSertvice.startOnline(userId, id);

			System.out.println();

			return ResponseEntity.ok(Map.of("token", token.toJwt()));

		}
		else if(findUser.getRole()==UserRole.STUDENT )// && lecture.isOnline() )
		{


			IdentityData identityData = new IdentityData(participantName, "학생");
			String jsonIdentity = serializeIdentityData(identityData);



			token.setIdentity(jsonIdentity);
			token.setName(participantName);

			token.addGrants(new RoomJoin(true), new RoomName(roomName));


			videoSertvice.startOnline(userId, id);


			return ResponseEntity.ok(Map.of("token", token.toJwt()));
		}


		return ResponseEntity.ok(Map.of("token", null));

//		String userToken = request.getHeader("Authorization");
//
//		Long userId = Long.parseLong(jwtUtil.getUserId(userToken));
//		LectureDetailResponse lecture= lectureService.findLectureById(userId,id);
//
//
//		//RegistrationStatus registrationStatus = registrationService.isOnline(userId,id);
//
//		if(registrationStatus==RegistrationStatus.ACCEPTED)
//		{
//			String roomName = lecture.getTitle();
//			String participantName = userService.getUserName(userId);
//
//
//			AccessToken token = new AccessToken(LIVEKIT_API_KEY, LIVEKIT_API_SECRET);
//			token.setName(participantName);
//			token.setIdentity(participantName);
//			token.addGrants(new RoomJoin(true), new RoomName(roomName));
//
//			//videoSertvice.startOnline(userId,id);
//
//
//
//			return ResponseEntity.ok(Map.of("token", token.toJwt()));
//		}
//		else{
//			return ResponseEntity.status(HttpStatus.FORBIDDEN).body(Map.of("errorMessage", "Not accepted"));
//
//		}



	}

	@PostMapping(value = "/livekit/webhook", consumes = "application/webhook+json")
	public ResponseEntity<String> receiveWebhook(@RequestHeader("Authorization") String authHeader, @RequestBody String body) {
		WebhookReceiver webhookReceiver = new WebhookReceiver(LIVEKIT_API_KEY, LIVEKIT_API_SECRET);
		try {
			WebhookEvent event = webhookReceiver.receive(body, authHeader);
			System.out.println("LiveKit Webhook: " + event.toString());
		} catch (Exception e) {
			System.err.println("Error validating webhook event: " + e.getMessage());
		}
		return ResponseEntity.ok("ok");
	}

	

}
