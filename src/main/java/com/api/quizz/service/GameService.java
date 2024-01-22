package com.api.quizz.service;

import com.api.quizz.controller.dto.game.GameDto;
import com.api.quizz.controller.dto.game.StartGameDto;
import com.api.quizz.mapper.MapStructMapper;
import com.api.quizz.repository.GameEntity;
import com.api.quizz.repository.GameRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class GameService {

    private final GameRepository gameRepository;
    private final MapStructMapper mapStructMapper;

    public List<GameDto> findAll() {
        List<GameEntity> gameEntities = gameRepository.findAll();
        List<GameDto> gameDtos = gameEntities.stream().map(mapStructMapper::gameEntityToDto).collect(Collectors.toList());
        if(gameDtos.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No categories found");
        }
        return gameDtos;
    }

    public GameDto findById(Long gameId) {
        GameEntity gameEntity = gameRepository
                .findById(gameId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Game not found with id: " + gameId));
        return mapStructMapper.gameEntityToDto(gameEntity);
    }

    public GameDto add(GameDto gameDto) {
        GameEntity gameEntity = mapStructMapper.gameDtoToEntity(gameDto);
        GameEntity savedGameEntity = gameRepository.save(gameEntity);

        return mapStructMapper.gameEntityToDto(savedGameEntity);
    }

}
