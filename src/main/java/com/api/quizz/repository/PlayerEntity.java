package com.api.quizz.repository;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "player")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class PlayerEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @Column(name = "pseudo")
    private String pseudo;

    @NotBlank
    @Email
    @Column(name = "email", unique = true)
    private String email;

    @Pattern(message = "Huit caractères minimum, au moins une lettre majuscule, une lettre minuscule et un chiffre", regexp = "\"^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$\"")
    @Size(message = "Au moins 8 caractères", min = 8)
    @NotBlank
    @Column(name = "password")
    private String password;

    @OneToMany(mappedBy = "player", orphanRemoval = true)
    private List<GameEntity> games = new ArrayList<>();

    @PrePersist
    public void prePresist(){
        this.createdAt = LocalDateTime.now();
    }


}