package com.api.quizz.controller.dto.player;

import com.api.quizz.controller.dto.category.CategoryDto;
import com.api.quizz.controller.dto.question.QuestionDto;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data@NoArgsConstructor
public class GameForPlayerDto {
    private Long id;
    private LocalDateTime createdAt;
    private Long score;
    private Long playerId;
    private String title;
    private List<CategoryDto> categories = new ArrayList<>();
    private List<QuestionForPlayerDto> questions = new ArrayList<>();
}
