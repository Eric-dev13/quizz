package com.api.quizz.controller;

import com.api.quizz.controller.dto.question.QuestionDto;
import com.api.quizz.service.QuestionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/questions")
@RequiredArgsConstructor
public class QuestionController {

    private final QuestionService questionService;

    @GetMapping
    public ResponseEntity<List<QuestionDto>> findAll(){
        List<QuestionDto> questionDtos = questionService.findAll();
        return ResponseEntity.ok(questionDtos);
    }

    @GetMapping("/{id}")
    public ResponseEntity<QuestionDto> findById(@PathVariable("id") Long questionId) {
        QuestionDto questionDto = questionService.findById(questionId);
        return ResponseEntity.ok(questionDto);
    }

    @PostMapping
    public boolean add(@RequestBody QuestionDto questionDto){
        return questionService.add(questionDto);
    }

    @PutMapping("/{id}")
    public boolean update(@PathVariable("id") Long questionId, @RequestBody QuestionDto questionDto){
        return questionService.update(questionId, questionDto);
    }
}
