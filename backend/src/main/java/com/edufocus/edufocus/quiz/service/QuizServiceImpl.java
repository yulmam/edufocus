package com.edufocus.edufocus.quiz.service;

import com.edufocus.edufocus.quiz.entity.Quiz;
import com.edufocus.edufocus.quiz.entity.QuizCreateRequest;
import com.edufocus.edufocus.quiz.entity.QuizSet;
import com.edufocus.edufocus.quiz.repository.QuizRepository;
import com.edufocus.edufocus.quiz.repository.QuizSetRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class QuizServiceImpl implements QuizService {

    private final QuizRepository quizRepository;

    private final QuizSetRepository quizSetRepository;

    @Override
    public void createQuiz(long quizSetId, QuizCreateRequest quizCreateRequest) {
        QuizSet quizSet = quizSetRepository.findById(quizSetId).get();

        Quiz quiz = new Quiz().builder()
                .title(quizCreateRequest.getTitle())
                .description(quizCreateRequest.getDescription())
                .answer(quizCreateRequest.getAnswer())
                .image(quizCreateRequest.getImage())
                .quizSet(quizSet)
                .build();

        if (!quiz.isSingle()) {
            quiz.setChoice1(quizCreateRequest.getChoice1());
            quiz.setChoice2(quizCreateRequest.getChoice2());
            quiz.setChoice3(quizCreateRequest.getChoice3());
            quiz.setChoice4(quizCreateRequest.getChoice4());
        }

        quizRepository.save(quiz);
    }

    @Override
    public boolean deleteQuiz(long quizId) {
        // 유저 아이디 정보 조회 후 검증 로직 추가 예정
        // jwt -> 로그인 유저 정보 조회
        // quizId -> 퀴즈 정보 조회 -> 퀴즈셋 정보 조회
        // 퀴즈셋 생성자와 로그인 유저의 id값이 일치하는지 확인 -> 불일치시 삭제 실패

        quizRepository.deleteById(quizId);
        return true;
    }

}
