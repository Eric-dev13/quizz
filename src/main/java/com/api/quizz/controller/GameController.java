package com.api.quizz.controller;


import com.api.quizz.controller.dto.game.GameDto;
import com.api.quizz.controller.dto.player.PlayerDto;
import com.api.quizz.controller.dto.question.QuestionDto;
import com.api.quizz.service.GameService;
import com.api.quizz.service.PlayerService;
import com.api.quizz.service.QuestionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("api/games")
@RequiredArgsConstructor
public class GameController {

    private final GameService gameService;
    private final QuestionService questionService;
    private final PlayerService playerService;

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
    public ResponseEntity<GameDto> add(@RequestBody GameDto gameDto){
        return ResponseEntity.ok(gameService.add(gameDto));
    }

    /*
    Pour générer une nouvelle partie il faut generer une requete avec :
    - le nombre de questions a renvoyer
    - la liste des catégories
    - le niveau de difficulté
     */
    @PostMapping("/randomize")
    public ResponseEntity<GameDto> generateGame(
            @RequestParam(name = "playerId") Long playerId,
            @RequestParam(name = "limit") Long limit,
            @RequestParam(name = "categories") String[] categories){

        // Retourne l'utilisateur courant
        PlayerDto player = playerService.findById(playerId);

        // Générer une liste de questions avec des propositions.
        List<QuestionDto> questionDtos = questionService.generateGame(limit, Arrays.asList(categories));

        // Instancie une nouvelle partie
        GameDto gameDto = new GameDto(player, questionDtos);

        // Création de la nouvelle partie
        GameDto savedGameDto = gameService.add(gameDto);
        if(savedGameDto != null) {
            return ResponseEntity.ok(savedGameDto);
        }

        // Sinon retourne une erreur
        return ResponseEntity.notFound().build();

        // Enregistrer la selection automatique dans game non du joueur, liste des questions reponses
        //Puis à la fin de la partie enregistrement du score
    }
}
