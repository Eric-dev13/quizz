package com.api.quizz.controller.dto.question;


import com.api.quizz.repository.QuestionEntity;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AnswersForQuestionDto {
    private Long id;
    private String title;
    private boolean isCorrect;
    // private QuestionDto question; // Eviter les référence circulaire
}
