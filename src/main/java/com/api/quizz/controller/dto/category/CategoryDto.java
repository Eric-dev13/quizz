package com.api.quizz.controller.dto.category;

import com.fasterxml.jackson.annotation.JsonManagedReference;
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
    // private List<GameDto> games = new ArrayList<>();
    // private List<QuestionDto> questions = new ArrayList<>();
}
