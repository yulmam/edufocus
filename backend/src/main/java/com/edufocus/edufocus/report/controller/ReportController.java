package com.edufocus.edufocus.report.controller;

import com.edufocus.edufocus.report.entity.Report;
import com.edufocus.edufocus.report.entity.ReportRequset;
import com.edufocus.edufocus.report.service.ReportService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.SQLException;

@RestController
@RequestMapping("/report")
@Slf4j
@RequiredArgsConstructor
public class ReportController{


    private final ReportService reportService;




    @PostMapping("/submit")
    public ResponseEntity<Report> submit(@RequestBody ReportRequset reportRequset) throws SQLException {
        Report report = reportService.grading(reportRequset);
        return new ResponseEntity<>(report,HttpStatus.CREATED);

    }

}
