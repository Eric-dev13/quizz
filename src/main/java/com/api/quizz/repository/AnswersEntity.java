package com.api.quizz.repository;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "answers")
public class AnswersEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "title")
    private String title;

    @ManyToOne
    @JoinColumn(name = "question_id")
    private QuestionEntity question;

//    @OneToMany(mappedBy = "answers", cascade = CascadeType.ALL)
//    private List<AnswersQuestionEntity> answersQuestions = new ArrayList<>();


}