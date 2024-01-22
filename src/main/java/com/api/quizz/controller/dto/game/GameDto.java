package com.api.quizz.controller.dto.game;

import com.api.quizz.controller.dto.category.CategoryDto;
import com.api.quizz.controller.dto.player.PlayerDto;
import com.api.quizz.controller.dto.question.QuestionDto;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class GameDto {
    private Long id;
    private LocalDateTime createdAt;
    private Long score;
    private PlayerDto player;
    private Long playerId;
    private String title;
    private List<CategoryDto> categories = new ArrayList<>();
    private List<QuestionDto> questions = new ArrayList<>();

    public GameDto (PlayerDto player, List<QuestionDto> questions) {
        this.player = player;
        this.questions = questions;
    }
}
