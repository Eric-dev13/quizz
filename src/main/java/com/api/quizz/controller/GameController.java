package com.api.quizz.controller;

import com.api.quizz.controller.dto.category.CategoryDto;
import com.api.quizz.controller.dto.game.GameDto;
import com.api.quizz.controller.dto.player.PlayerDto;
import com.api.quizz.controller.dto.question.QuestionDto;
import com.api.quizz.repository.CategoryRepository;
import com.api.quizz.service.CategoryService;
import com.api.quizz.service.GameService;
import com.api.quizz.service.PlayerService;
import com.api.quizz.service.QuestionService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.Explode;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.enums.ParameterStyle;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("api/games")
@RequiredArgsConstructor
@Tag(name = "Gestion des parties", description = "Endpoints pour la gestion des parties")
@SecurityRequirement(name = "Bearer Authentication")
public class GameController {

    private final GameService gameService;
    private final QuestionService questionService;
    private final PlayerService playerService;
    private final CategoryService categoryService;
    private final CategoryRepository categoryRepository;

    @Operation(summary = "Récupère toute les parties")
    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping
    public ResponseEntity<List<GameDto>> findAll() {
        List<GameDto> gameDtos = gameService.findAll();
        return ResponseEntity.ok(gameDtos);
    }

    @Operation(summary = "Récupère une partie crée par l'utilisateur courant a partir de son ID")
    @PreAuthorize("isAuthenticated()")
    @GetMapping("/{id}")
    public ResponseEntity<GameDto> findById(@PathVariable("id") Long gameId) {
        GameDto gameDto = gameService.findById(gameId);
        return ResponseEntity.ok(gameDto);
    }

    @Operation(summary = "Ajoute une partie")
    @PreAuthorize("isAuthenticated()")
    @PostMapping
    public ResponseEntity<GameDto> add(@RequestBody GameDto gameDto){
        return ResponseEntity.ok(gameService.add(gameDto));
    }

    /*
    Pour générer une nouvelle partie il faut generer une requete avec :
    - le nombre de questions a renvoyer
    - la liste des catégories
    - le niveau de difficulté
    - l'identifiant du joueur
     */
    @Operation(
            summary = "Générer une nouvelle partie",
            description = "Cette opération génère une nouvelle partie de quizz en fonction des catégories sélectionnées. Les questions sont choisies de manière aléatoire en tenant compte des catégories spécifiées."
    )
    @PostMapping("/randomize")
    public ResponseEntity<GameDto> generateGame(
            @Parameter(name = "title", description = "Titre pour cette nouvelle partie")
            @RequestParam() String title,
            @Parameter(name = "playerId", description = "Identifiant du joueur ayant créé cette partie")
            @RequestParam() Long playerId,
            @Parameter(name = "limit", description = "Nombre total de questions pour cette partie")
            @RequestParam() Long limit,
            @Parameter(
                    name = "categories",
                    description = "Choix multiple des categories",
                    in = ParameterIn.QUERY,
                    style = ParameterStyle.FORM,
                    explode = Explode.TRUE,
                    array = @ArraySchema(
                                schema = @Schema(
                                            type = "string",
                                            allowableValues = {"Géographie : Capitales", "HTML", "CSS", "JavaScript"})
                    )
                    //schema = @Schema(type = "string", allowableValues = {"Géographie : Capitales", "HTML", "CSS", "JavaScript"})
                    // array = @ArraySchema(schema = @Schema(implementation = CategoryDto.class))
                    // content = @Content(array = @ArraySchema(schema = @Schema(implementation = CategoryDto.class)))
            )
            @RequestParam() String[] categories){

        // Retourner l'utilisateur courant
        PlayerDto player = playerService.findById(playerId);

        // Générer une liste de questions avec des propositions.
        List<QuestionDto> questionDtos = questionService.generateGame(limit, Arrays.asList(categories));

        // Retourner la liste des catégories
        List<CategoryDto> categoryDtos = categoryService.findAllWhereNameIn(categories);

        // Instancie une nouvelle partie
        GameDto gameDto = new GameDto(title, player, categoryDtos, questionDtos);

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
