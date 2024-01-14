package com.api.quizz.controller;

import com.api.quizz.controller.dto.CategoryDto;
import com.api.quizz.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/category")
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService categoryService;


    @GetMapping
    public ResponseEntity<List<CategoryDto>> findAll(){
        List<CategoryDto> categoryDtos = categoryService.findAll();
        return ResponseEntity.ok(categoryDtos);
    }

    @GetMapping("/{id}")
    public ResponseEntity<CategoryDto> findById(@PathVariable("id") Long CategoryId) {
            CategoryDto categoryDto = categoryService.findById(CategoryId);
            return ResponseEntity.ok(categoryDto);
    }

    @PostMapping
    public boolean add(@RequestBody CategoryDto categoryDto){
        return categoryService.add(categoryDto);
    }

    @PutMapping("/{id}")
    public boolean update(@PathVariable("id") Long CategoryId, @RequestBody CategoryDto categoryDto){
        return categoryService.update(CategoryId, categoryDto);
    }

}
