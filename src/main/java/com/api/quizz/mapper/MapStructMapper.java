package com.api.quizz.mapper;

import com.api.quizz.controller.dto.answers.AnswersDto;
import com.api.quizz.controller.dto.category.CategoryDto;
import com.api.quizz.controller.dto.game.GameDto;
import com.api.quizz.controller.dto.player.PlayerDto;
import com.api.quizz.controller.dto.question.AnswersForQuestionDto;
import com.api.quizz.controller.dto.question.CategoryForQuestionDto;
import com.api.quizz.controller.dto.question.GameForQuestionDto;
import com.api.quizz.controller.dto.question.QuestionDto;
import com.api.quizz.repository.*;
import org.mapstruct.*;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = MappingConstants.ComponentModel.SPRING)
public interface MapStructMapper {

    /* QUESTION */
    QuestionDto questionEntityToDto(QuestionEntity questionEntity);
    QuestionEntity questionDtoToEntity(QuestionDto questionDto);
    GameForQuestionDto gameEntityToGameEntity(GameEntity gameEntity);
    CategoryForQuestionDto categoryEntityToCategoryForQuestionDto(CategoryEntity categoryEntity);
    AnswersForQuestionDto answersEntityToAnswersForQuestionDto(AnswersEntity answersEntity);

    /* CATEGORY */
    CategoryDto categoryEntityToDto(CategoryEntity categoryEntity);
    CategoryEntity categoryDtoToEntity(CategoryDto categoryDto);

    /* REPONSE */
    AnswersDto answerseEntityToDto(AnswersEntity answersEntity);
    AnswersEntity answersDtoToEntity(AnswersDto answersDto);

    /* PARTIE */
    GameDto gameEntityToDto(GameEntity gameEntity);
    GameEntity gameDtoToEntity(GameDto gameDto);

    /* JOUEUR */
    PlayerDto playerEntityToDto(PlayerEntity playerEntity);
    PlayerEntity playerDtoToEntity(PlayerDto playerDto);
}