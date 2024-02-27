package com.api.quizz.controller;

import com.api.quizz.controller.dto.category.CategoryDto;
import com.api.quizz.service.CategoryService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/categories")
@RequiredArgsConstructor
@Tag(name = "Gestion des catégories", description = "Endpoints pour la gestion des catégories")
public class CategoryController {

    private final CategoryService categoryService;

    @Operation(summary = "Récupère toutes les catégories")
    @GetMapping
    public ResponseEntity<List<CategoryDto>> findAll(){
        List<CategoryDto> categoryDtos = categoryService.findAll();
        return ResponseEntity.ok(categoryDtos);
    }

    @Operation(summary = "Récupère une catégorie par son ID")
    @GetMapping("/{id}")
    public ResponseEntity<CategoryDto> findById(@PathVariable("id") Long CategoryId) {
            CategoryDto categoryDto = categoryService.findById(CategoryId);
            return ResponseEntity.ok(categoryDto);
    }

    @Operation(summary = "Ajouter une catégorie")
    @PostMapping
    public boolean add(@RequestBody CategoryDto categoryDto){
        return categoryService.add(categoryDto);
    }

//    @Operation(summary = "Modifier une catégorie par son ID")
    @PutMapping("/{id}")
    public boolean update(@PathVariable("id") Long CategoryId, @RequestBody CategoryDto categoryDto){
        return categoryService.update(CategoryId, categoryDto);
    }

}
