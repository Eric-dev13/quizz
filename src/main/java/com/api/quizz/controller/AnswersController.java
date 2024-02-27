package com.api.quizz.controller;

import com.api.quizz.controller.dto.answers.AnswersDto;
import com.api.quizz.controller.dto.question.QuestionDto;
import com.api.quizz.service.AnswersService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/answers")
@RequiredArgsConstructor
@Tag(name = "Gestion des réponses", description = "Endpoints pour la gestion des réponses")
@SecurityRequirement(name = "Bearer Authentication")
public class AnswersController {

    private final AnswersService answersService;

    @Operation(summary = "Listes des réponses")
    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping
    public ResponseEntity<List<AnswersDto>> findAll(){
        List<AnswersDto> answersDtos = answersService.findAll();
        return ResponseEntity.ok(answersDtos);
    }

    @Operation(summary = "Récupère une réponses à partir de l'ID")
    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/{id}")
    public ResponseEntity<AnswersDto> findById(@PathVariable("id") Long answersId) {
        AnswersDto answersDto = answersService.findById(answersId);
        return ResponseEntity.ok(answersDto);
    }

    @PreAuthorize("isAuthenticated()")
    @Operation(summary = "Ajouter une réponses", description = "")
    @PostMapping
    public boolean add(@RequestBody AnswersDto answersDto){
        return answersService.add(answersDto);
    }

    @PreAuthorize("isAuthenticated")
    @PutMapping("/{id}")
    public boolean update(@PathVariable("id") Long answersId, @RequestBody AnswersDto answersDto){
        return answersService.update(answersId, answersDto);
    }
}
