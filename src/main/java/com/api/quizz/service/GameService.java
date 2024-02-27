package com.api.quizz.service;

import com.api.quizz.controller.dto.game.GameDto;
import com.api.quizz.mapper.MapStructMapper;
import com.api.quizz.repository.GameEntity;
import com.api.quizz.repository.GameRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
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
        // Obtenez l'objet Authentication depuis le contexte de sécurité
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        // Obtenez l'utilisateur courant à partir de l'objet Authentication
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        String username = userDetails.getUsername();

        GameEntity gameEntity = gameRepository
                .findById(gameId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Game not found with id: " + gameId));

        if(gameEntity.getPlayer() != null && gameEntity.getPlayer().getUsername().equals(username)) {
            return mapStructMapper.gameEntityToDto(gameEntity);
        } else {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Access Denied. You do not have the required permissions to access this resource.");
        }
    }

    public GameDto add(GameDto gameDto) {
        GameEntity gameEntity = mapStructMapper.gameDtoToEntity(gameDto);
        GameEntity savedGameEntity = gameRepository.save(gameEntity);

        GameDto savedGameDto = mapStructMapper.gameEntityToDto(savedGameEntity);
        return savedGameDto;
    }

}
