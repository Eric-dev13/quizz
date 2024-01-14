package com.api.quizz.controller.dto;

import com.api.quizz.repository.GameEntity;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
public class PlayerDto {
    private Long id;
    private LocalDateTime createdAt;
    private String pseudo;
    private String email;
    private String password;
    //private List<GameDto> games = new ArrayList<>();
}
