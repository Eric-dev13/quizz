package com.api.quizz.controller.dto;

import com.api.quizz.repository.AnswersQuestionEntity;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class AnswersDto {
    private Long id;
    private String title;
    // private List<AnswersQuestionDto> answersQuestions = new ArrayList<>(); //
}
