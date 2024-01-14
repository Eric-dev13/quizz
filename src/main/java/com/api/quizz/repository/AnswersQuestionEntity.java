package com.api.quizz.repository;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/*
Pour ajouter une propriété suppléméntaire dans la table de jonction response_questions, il faut créer une entité intermédiaire qui représente cette table de jonction avec la colonne supplémentaire.
*/
@Entity
@Table(name = "answers_questions")
@Getter
@Setter
@NoArgsConstructor
public class AnswersQuestionEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "is_correct")
    private boolean isCorrect;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "answers_id")
    private AnswersEntity answers;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "question_id")
    private QuestionEntity question;


}
