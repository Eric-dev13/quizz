package com.api.quizz.controller.dto.category;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class CategoryDto {

    private Long id;

    @Schema(description = "Nom de la catégorie")
    @NotBlank
    private String name;
}
