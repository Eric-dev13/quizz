package com.api.quizz.controller;

import com.api.quizz.controller.dto.question.QuestionDto;
import com.api.quizz.service.QuestionService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/questions")
@RequiredArgsConstructor
@Tag(name = "Gestion des questions", description = "Endpoints pour la gestion des questions")
@SecurityRequirement(name = "Bearer Authentication")
public class QuestionController {

    private final QuestionService questionService;

    @Operation(summary = "Listes des questions")
    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping
    public ResponseEntity<List<QuestionDto>> findAll(){
        List<QuestionDto> questionDtos = questionService.findAll();
        return ResponseEntity.ok(questionDtos);
    }

    @Operation(summary = "Récupère une question à partir de l'ID")
    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/{id}")
    public ResponseEntity<QuestionDto> findById(@PathVariable("id") Long questionId) {
        QuestionDto questionDto = questionService.findById(questionId);
        return ResponseEntity.ok(questionDto);
    }

    @PreAuthorize("isAuthenticated()")
    @Operation(summary = "Ajouter une question", description = "")
    @PostMapping
    public boolean add(@RequestBody QuestionDto questionDto){
        return questionService.add(questionDto);
    }

    @PreAuthorize("isAuthenticated")
    @PutMapping("/{id}")
    public boolean update(@PathVariable("id") Long questionId, @RequestBody QuestionDto questionDto){
        return questionService.update(questionId, questionDto);
    }
}
