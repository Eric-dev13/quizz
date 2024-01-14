package com.api.quizz.controller.dto;

import com.api.quizz.repository.GameEntity;
import com.api.quizz.repository.QuestionEntity;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class CategoryDto {
    private Long id;
    @NotBlank
    private String name;
    //private List<GameDto> games = new ArrayList<>();
    //private List<QuestionDto> questions = new ArrayList<>();
}
