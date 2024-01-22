package com.api.quizz.service;


import com.api.quizz.controller.dto.player.PlayerDto;
import com.api.quizz.mapper.MapStructMapper;
import com.api.quizz.repository.PlayerEntity;
import com.api.quizz.repository.PlayerRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

@Service
@RequiredArgsConstructor
public class PlayerService {

    private final PlayerRepository playerRepository;
    private final MapStructMapper mapStructMapper;

    public PlayerDto findById(Long playerId) {
        PlayerEntity playerEntity = playerRepository
                .findById(playerId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Player not found with id: " + playerId));
        return mapStructMapper.playerEntityToDto(playerEntity);
    }

}
