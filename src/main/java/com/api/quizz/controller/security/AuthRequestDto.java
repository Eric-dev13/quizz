package com.api.quizz.controller.security;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AuthRequestDto {
    @Email(message = "L'adresse e-mail n'est pas valide")
    @NotBlank(message = "L'adresse mail est obligatoire !")
    @Schema(example = "lanzae32@gmail.com")
    private String email;

    @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,}$", message = "Huit caractère au minimum, au moins une lettre majuscule et une lettre minuscule et un chiffre")
    @NotBlank(message = "Le mot de passe est obligatoire !")
    @Schema(example = "Azerty-12")
    private String password;
}
