package com.api.quizz.controller;

import com.api.quizz.controller.dto.category.CategoryDto;
import com.api.quizz.controller.dto.game.GameDto;
import com.api.quizz.controller.dto.player.PlayerDto;
import com.api.quizz.controller.dto.question.QuestionDto;
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
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("api/players")
@RequiredArgsConstructor
@SecurityRequirement(name = "Bearer Authentication")
@Tag(name = "Gestion des joueurs", description = "Endpoints pour la gestion des joueurs")
public class PlayerController {

    private final PlayerService playerService;
    private final GameService gameService;
    private final QuestionService questionService;
    private final CategoryService categoryService;


     @Operation(summary = "Récupère un joueur par son ID", description = "A JWT token is required to access this API..")
     //@SecurityRequirement(name = "Bearer Authentication")
    @GetMapping("/{id}")
    public PlayerDto findById(@PathVariable("id") Long playerId) {
        PlayerDto playerDto = playerService.findById(playerId);
        return playerDto;
    }

    // Creation d'une nouvelle partie
    @Operation(summary = "Ajoute une partie")
    @PreAuthorize("isAuthenticated()")
    @PostMapping
    public ResponseEntity<GameDto> createGame(@PathVariable("id") Long playerId, @RequestBody GameDto gameDto) {
        return ResponseEntity.ok(gameService.add(gameDto));
    }

    @Operation(
            summary = "Générer une nouvelle partie",
            description = "Cette opération génère une nouvelle partie de quizz en fonction des catégories sélectionnées. Les questions sont choisies de manière aléatoire en tenant compte des catégories spécifiées."
    )
    @PostMapping("/randomize/{playerId}")
    public ResponseEntity<GameDto> generateGame(
            @PathVariable("playerId") Long playerId,
            @Parameter(name = "title", description = "Titre pour cette nouvelle partie")
            @RequestParam() String title,
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

        // Retourne l'utilisateur courant
        PlayerDto player = playerService.findById(playerId);

        // Retourne une liste aléatoire de questions pour une ou des catégories avec des propositions.
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
