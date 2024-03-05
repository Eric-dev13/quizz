package com.api.quizz.controller.security;

import com.api.quizz.exceptions.AccountExistsException;
import com.api.quizz.exceptions.UnauthorizedException;
import com.api.quizz.repository.PlayerEntity;
import com.api.quizz.service.security.JwtUserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("authenticated")
@Tag(name = "Gestion de la sécurité", description = "Endpoints pour la gestion de la sécurité")
public class SecurityController {

    @Autowired
    private JwtUserService userService;

    @Operation(summary = "S'inscrire", description = "Saisir une adresse mail et un mot de passe avec Huit caractère au minimum, au moins une lettre majuscule et une lettre minuscule et un chiffre")
    @PostMapping("/register")
    public ResponseEntity<AuthResponseDto> register(@RequestBody AuthRequestDto authRequestDto) throws AccountExistsException {
        UserDetails user = userService.save(authRequestDto.getEmail(),authRequestDto.getPassword());
        String token = userService.generateJwtForUser(user);
        return ResponseEntity.ok(new AuthResponseDto(user,token));
    }

    @Operation(summary = "S'authentifier", description = "Saisir une adresse mail et un mot de passe avec Huit caractère au minimum, au moins une lettre majuscule et une lettre minuscule et un chiffre")
    @PostMapping("/authorize")
    public ResponseEntity<AuthResponseDto> authorize(@RequestBody AuthRequestDto requestDto) throws UnauthorizedException {
        Authentication authentication = null;
        try {
            authentication = userService.authenticate(requestDto.getEmail(), requestDto.getPassword());
            SecurityContextHolder.getContext().setAuthentication(authentication);
            UserDetails user = (UserDetails) authentication.getPrincipal();
            String token = userService.generateJwtForUser(user);
            return ResponseEntity.ok(new AuthResponseDto(user, token));
        } catch(AuthenticationException e) {
            throw new UnauthorizedException();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}


