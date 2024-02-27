package com.api.quizz.controller.dto.game;

import com.api.quizz.controller.dto.category.CategoryDto;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
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
