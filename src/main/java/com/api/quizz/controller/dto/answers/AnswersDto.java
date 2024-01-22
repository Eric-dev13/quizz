package com.api.quizz.controller.dto.answers;


import com.api.quizz.repository.QuestionEntity;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AnswersDto {
    private Long id;
    private String title;
    private boolean isCorrect;
    private QuestionEntity question;
}
