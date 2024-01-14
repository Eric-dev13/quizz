package com.api.quizz.controller.dto;

import com.api.quizz.repository.QuestionEntity;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AnswersQuestionDto {
    private Long id;
    private boolean isCorrect;
    private AnswersDto answers;
    //private QuestionDto question; //
}
