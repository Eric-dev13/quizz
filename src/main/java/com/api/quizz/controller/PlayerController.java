package com.api.quizz.controller;

import com.api.quizz.controller.dto.player.PlayerDto;
import com.api.quizz.service.PlayerService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/players")
@RequiredArgsConstructor
@SecurityRequirement(name = "Bearer Authentication")
@Tag(name = "Gestion des joueurs", description = "Endpoints pour la gestion des joueurs")
public class PlayerController {

    private final PlayerService playerService;

     @Operation(summary = "Récupère un joueur par son ID", description = "A JWT token is required to access this API..")
     //@SecurityRequirement(name = "Bearer Authentication")
    @GetMapping("/{id}")
    public PlayerDto findById(@PathVariable("id") Long playerId) {
        PlayerDto playerDto = playerService.findById(playerId);
        return playerDto;
    }

    // Ajouter une question

}
