package com.api.quizz.repository;

import com.api.quizz.controller.dto.category.CategoryDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface QuestionRepository extends JpaRepository<QuestionEntity, Long> {

    @Query("SELECT q FROM QuestionEntity q JOIN q.categories c WHERE c.name IN :categories ORDER BY RAND() LIMIT :limit")
    List<QuestionEntity> findQuestionsByCategory(@Param("limit") Long limit, @Param("categories") List<String> categories);


}