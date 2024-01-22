package com.api.quizz.controller.dto.question;


import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AnswersForQuestionDto {
    private Long id;
    private String title;
    private boolean isCorrect;
}
