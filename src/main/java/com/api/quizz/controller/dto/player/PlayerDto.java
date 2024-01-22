package com.api.quizz.controller.dto.player;

import lombok.Data;
import lombok.NoArgsConstructor;
import java.time.LocalDateTime;


@Data
@NoArgsConstructor
public class PlayerDto {
    private Long id;
    private LocalDateTime createdAt;
    private String pseudo;
    private String email;
    private String password;
    //private List<GameDto> games = new ArrayList<>();

    public PlayerDto(String pseudo,String email) {
        this.pseudo = pseudo;
        this.email = email;
    }
}
