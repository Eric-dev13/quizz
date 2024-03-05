package com.api.quizz.mapper;

import com.api.quizz.controller.dto.answers.AnswersDto;
import com.api.quizz.controller.dto.category.CategoryDto;
import com.api.quizz.controller.dto.game.GameDto;
import com.api.quizz.controller.dto.player.GameForPlayerDto;
import com.api.quizz.controller.dto.player.PlayerDto;
import com.api.quizz.controller.dto.player.QuestionForPlayerDto;
import com.api.quizz.controller.dto.question.AnswersForQuestionDto;
import com.api.quizz.controller.dto.question.CategoryForQuestionDto;
import com.api.quizz.controller.dto.question.GameForQuestionDto;
import com.api.quizz.controller.dto.question.QuestionDto;
import com.api.quizz.repository.*;
import org.mapstruct.*;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = MappingConstants.ComponentModel.SPRING)
public interface MapStructMapper {

    /* -------------- */
    /*       GAME     */
    /* -------------- */
    // ENTITY --> DTO + condition ignore
    @Mapping(target="player.games", ignore = true)
    @Mapping(target="questions", qualifiedByName = "gameQuestionEntityToDto")
    GameDto gameEntityToDto(GameEntity gameEntity);

    GameEntity gameDtoToEntity(GameDto gameDto);


    /* -------------- */
    /*    QUESTION    */
    /* -------------- */
    // ENTITY --> DTO
    @Mapping(target="games", ignore = true)
    QuestionDto questionEntityToDto(QuestionEntity questionEntity);

    // ENTITY --> DTO + condition ignore GAME
    @Mapping(target="games", ignore = true, qualifiedByName = "gameQuestionEntityToDto")
    @Named("gameQuestionEntityToDto")
    QuestionDto gameQuestionEntityToDto(QuestionEntity questionEntity);

    QuestionEntity questionDtoToEntity(QuestionDto questionDto);
//    GameForQuestionDto gameEntityToGameEntity(GameEntity gameEntity);
//    CategoryForQuestionDto categoryEntityToCategoryForQuestionDto(CategoryEntity categoryEntity);
//    AnswersForQuestionDto answersEntityToAnswersForQuestionDto(AnswersEntity answersEntity);


    /* -------------- */
    /*    CATEGORY    */
    /* -------------- */
    CategoryDto categoryEntityToDto(CategoryEntity categoryEntity);
    CategoryEntity categoryDtoToEntity(CategoryDto categoryDto);


    /* -------------- */
    /*    ANSWERS     */
    /* -------------- */
    AnswersDto answersEntityToDto(AnswersEntity answersEntity);
    AnswersEntity answersDtoToEntity(AnswersDto answersDto);


    /* -------------- */
    /*    PLAYER      */
    /* -------------- */
    PlayerDto playerEntityToDto(PlayerEntity playerEntity);

//    PlayerEntity playerDtoToEntity(PlayerDto playerDto);
//    GameForPlayerDto gameEntityToGamePlayerDto(GameEntity gameEntity);
//    QuestionForPlayerDto questionEntityToQuestionForPlayerDto(QuestionEntity questionEntity);

}