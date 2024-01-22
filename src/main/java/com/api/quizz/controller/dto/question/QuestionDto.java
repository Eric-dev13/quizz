package com.api.quizz.controller.dto.question;


import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class QuestionDto {
    private Long id;
    private String title;
    private List<CategoryForQuestionDto> categories = new ArrayList<>();
    private List<GameForQuestionDto> games = new ArrayList<>();
    private List<AnswersForQuestionDto> answers = new ArrayList<>();
}
