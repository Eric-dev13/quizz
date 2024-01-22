package com.api.quizz.service;

import com.api.quizz.controller.dto.category.CategoryDto;
import com.api.quizz.mapper.MapStructMapper;
import com.api.quizz.repository.CategoryEntity;
import com.api.quizz.repository.CategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CategoryService {

    private final CategoryRepository categoryRepository;
    private final MapStructMapper mapStructMapper;


    public List<CategoryDto> findAll() {
        List<CategoryEntity> categoryEntity = categoryRepository.findAll();
        List<CategoryDto> categoryDtos = categoryEntity.stream().map(mapStructMapper::categoryEntityToDto).collect(Collectors.toList());
        if(categoryDtos.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No categories found");
        }
        return categoryDtos;
    }

    public CategoryDto findById(Long categoryId) {
        CategoryEntity categoryEntity = categoryRepository
                .findById(categoryId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Category not found with id: " + categoryId));
        return mapStructMapper.categoryEntityToDto(categoryEntity);
    }

    public boolean add(CategoryDto categoryDto) {
        CategoryEntity categoryEntity = mapStructMapper.categoryDtoToEntity(categoryDto);
        CategoryEntity savedCategoryEntity = categoryRepository.save(categoryEntity);
        return savedCategoryEntity != null ;
    }

    public boolean update(Long categoryId, CategoryDto categoryDto) {
        CategoryEntity categoryEntity = mapStructMapper.categoryDtoToEntity(categoryDto);
        CategoryEntity originalCategoryEntity = categoryRepository
                .findById(categoryId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Category not found with id: " + categoryId));

        originalCategoryEntity.setName(categoryEntity.getName());
        CategoryEntity savedCategoryEntity = categoryRepository.save(originalCategoryEntity);
        return savedCategoryEntity != null;
    }
}
