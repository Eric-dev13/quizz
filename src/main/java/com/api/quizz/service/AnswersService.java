package com.api.quizz.service;

import com.api.quizz.controller.dto.answers.AnswersDto;
import com.api.quizz.controller.dto.question.QuestionDto;
import com.api.quizz.mapper.MapStructMapper;
import com.api.quizz.repository.AnswersEntity;
import com.api.quizz.repository.AnswerseRepository;
import com.api.quizz.repository.QuestionEntity;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AnswersService {

    private final AnswerseRepository answerseRepository;
    private final MapStructMapper mapStructMapper;


    public List<AnswersDto> findAll() {
        List<AnswersEntity> answersEntities = answerseRepository.findAll();
        List<AnswersDto> questionDtos = answersEntities.stream().map(mapStructMapper::answersEntityToDto).collect(Collectors.toList());
        if(questionDtos.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No answers found");
        }
        return questionDtos;
    }


    public AnswersDto findById(Long answersId) {
        AnswersEntity answersEntity = answerseRepository
                .findById(answersId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Question not found with id: " + answersId));
        return mapStructMapper.answersEntityToDto(answersEntity);
    }


    public boolean add(AnswersDto answersDto) {
        AnswersEntity answersEntity =  mapStructMapper.answersDtoToEntity(answersDto);

        AnswersEntity savedAnswersEntity = answerseRepository.save(answersEntity);
        return savedAnswersEntity != null;
    }


    public boolean update(Long answersId, AnswersDto answersDto) {
        AnswersEntity answersEntity = mapStructMapper.answersDtoToEntity(answersDto);
        AnswersEntity originalQuestionEntity = answerseRepository
                .findById(answersId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Question not found with id: " + answersId));

        originalQuestionEntity.setTitle(answersEntity.getTitle());
        AnswersEntity savedAnswersEntity = answerseRepository.save(originalQuestionEntity);
        return savedAnswersEntity != null;
    }
}
