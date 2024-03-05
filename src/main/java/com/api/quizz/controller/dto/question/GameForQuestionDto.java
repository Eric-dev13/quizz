package com.api.quizz.controller.dto.question;

import com.api.quizz.controller.dto.category.CategoryDto;
import com.api.quizz.controller.dto.player.PlayerDto;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class GameForQuestionDto {
    private Long id;
    private LocalDateTime createdAt;
    private Long score;
    private PlayerDto player;
    private List<CategoryDto> categories = new ArrayList<>();
}
