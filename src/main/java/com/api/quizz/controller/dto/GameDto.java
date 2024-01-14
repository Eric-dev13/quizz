package com.api.quizz.controller.dto;

import com.api.quizz.repository.CategoryEntity;
import com.api.quizz.repository.PlayerEntity;
import com.api.quizz.repository.QuestionEntity;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class GameDto {
    private Long id;
    private LocalDateTime createdAt;
    private Long score;
    private PlayerDto player;
    private List<CategoryDto> categories = new ArrayList<>();
    private List<QuestionDto> questions = new ArrayList<>();
}
