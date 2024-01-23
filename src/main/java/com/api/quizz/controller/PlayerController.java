package com.api.quizz.controller;

import com.api.quizz.controller.dto.player.PlayerDto;
import com.api.quizz.service.PlayerService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/players")
@RequiredArgsConstructor
public class PlayerController {

    private final PlayerService playerService;

    @GetMapping("/{id}")
    public PlayerDto findById(@PathVariable("id") Long playerId) {
        PlayerDto playerDto =  playerService.findById(playerId);
        return playerDto;
    }

}
