package com.api.quizz.controller.dto.game;

import com.api.quizz.controller.dto.category.CategoryDto;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
public class StartGameDto {
    Integer level;
    Integer nbreQuestion;
    List<CategoryDto> categories;
}
