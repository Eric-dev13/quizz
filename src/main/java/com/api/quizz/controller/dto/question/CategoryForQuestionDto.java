package com.api.quizz.controller.dto.question;

import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CategoryForQuestionDto {
    private Long id;
    private String name;
}
