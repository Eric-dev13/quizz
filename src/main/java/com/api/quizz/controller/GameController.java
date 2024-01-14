package com.api.quizz.controller;


import com.api.quizz.controller.dto.GameDto;
import com.api.quizz.controller.dto.QuestionDto;
import com.api.quizz.service.GameService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/game")
@RequiredArgsConstructor
public class GameController {

    private final GameService gameService;


    @GetMapping
    public ResponseEntity<List<GameDto>> findAll() {
        List<GameDto> gameDtos = gameService.findAll();
        return ResponseEntity.ok(gameDtos);
    }

    @GetMapping("/{id}")
    public ResponseEntity<GameDto> findById(@PathVariable("id") Long gameId) {
        GameDto gameDto = gameService.findById(gameId);
        return ResponseEntity.ok(gameDto);
    }

    @PostMapping
    public boolean add(@RequestBody GameDto gameDto){
        return gameService.add(gameDto);
    }
}
