package com.api.quizz.mapper;

import com.api.quizz.controller.dto.*;
import com.api.quizz.repository.*;
import org.mapstruct.*;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE, componentModel = MappingConstants.ComponentModel.SPRING)
public interface MapStructMapper {

    QuestionDto questionEntityToDto(QuestionEntity questionEntity);
    QuestionEntity questionDtoToEntity(QuestionDto questionDto);

    CategoryDto categoryEntityToDto(CategoryEntity categoryEntity);
    CategoryEntity categoryDtoToEntity(CategoryDto categoryDto);

    AnswersDto AnswerseEntityToDto(AnswersEntity answersEntity);
    AnswersQuestionDto answerseQuestionEntityToDto(AnswersQuestionEntity answerseQuestionEntity);

    GameDto gameEntityToDto(GameEntity gameEntity);
    GameEntity gameDtoToEntity(GameDto gameDto);

    PlayerDto playerEntityToDto(PlayerEntity playerEntity);
    PlayerEntity playerDtoToEntity(PlayerDto playerDto);
}