package com.api.quizz.controller.dto.player;


import com.api.quizz.controller.dto.question.AnswersForQuestionDto;
import com.api.quizz.controller.dto.question.CategoryForQuestionDto;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;


@Data
@NoArgsConstructor
public class QuestionForPlayerDto {
    private Long id;
    private String title;
    private List<CategoryForQuestionDto> categories = new ArrayList<>();
    private List<AnswersForQuestionDto> answers = new ArrayList<>();
}
