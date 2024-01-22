package com.api.quizz.service;


import com.api.quizz.controller.dto.game.StartGameDto;
import com.api.quizz.controller.dto.player.PlayerDto;
import com.api.quizz.controller.dto.question.QuestionDto;
import com.api.quizz.mapper.MapStructMapper;
import com.api.quizz.repository.CategoryEntity;
import com.api.quizz.repository.QuestionEntity;
import com.api.quizz.repository.QuestionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class QuestionService {

    private final QuestionRepository questionRepository;
    private final MapStructMapper mapStructMapper;

    public List<QuestionDto> findAll() {
        List<QuestionEntity> questionEntities = questionRepository.findAll();
        List<QuestionDto> questionDtos = questionEntities.stream().map(mapStructMapper::questionEntityToDto).collect(Collectors.toList());
        if(questionDtos.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No categories found");
        }
        return questionDtos;
    }

    public QuestionDto findById(Long questionId) {
        QuestionEntity questionEntity = questionRepository
                .findById(questionId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Question not found with id: " + questionId));
        return mapStructMapper.questionEntityToDto(questionEntity);
    }

    public boolean add(QuestionDto questionDto) {
        QuestionEntity questionEntity =  mapStructMapper.questionDtoToEntity(questionDto);

        QuestionEntity savedQuestionEntity = questionRepository.save(questionEntity);
        return questionEntity != null;
    }

    public boolean update(Long questionId, QuestionDto questionDto) {
        QuestionEntity questionEntity = mapStructMapper.questionDtoToEntity(questionDto);
        QuestionEntity originalQuestionEntity = questionRepository
                .findById(questionId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Question not found with id: " + questionId));

        originalQuestionEntity.setTitle(questionEntity.getTitle());
        QuestionEntity savedQuestionEntity = questionRepository.save(originalQuestionEntity);
        return savedQuestionEntity != null;
    }

    public List<QuestionDto> generateGame(Long limit, List<String> categories) {
        List<QuestionEntity> questionEntities = questionRepository.findQuestionsByCategory(limit,categories);

        List<QuestionDto> questionDtos = questionEntities.stream().map(mapStructMapper::questionEntityToDto).collect(Collectors.toList());

        if(questionDtos.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No Question by categories found");
        }

        return questionDtos;
    }
}
