package com.api.quizz.controller.dto.player;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
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
    // private Role role;
    private String email;
    private String password;

    private List<GameForPlayerDto> games = new ArrayList<>();

    public PlayerDto(String pseudo, String email) {
        this.pseudo = pseudo;
        this.email = email;
    }
}
