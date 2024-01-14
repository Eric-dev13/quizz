package com.api.quizz.controller.dto;

import com.api.quizz.repository.CategoryEntity;
import com.api.quizz.repository.GameEntity;
import com.api.quizz.repository.QuestionEntity;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class QuestionDto {
    private Long id;
    private String title;
    private List<CategoryDto> categories = new ArrayList<>(); //
    private List<AnswersQuestionDto> answersQuestions = new ArrayList<>();
    //private List<GameDto> games = new ArrayList<>(); //
}
