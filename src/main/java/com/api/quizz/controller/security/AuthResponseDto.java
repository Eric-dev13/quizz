package com.api.quizz.controller.security;


import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;

@Data
@NoArgsConstructor
public class AuthResponseDto {
    private UserDetails user;
    private String token;
    private String message;

    // LOGIN
    public AuthResponseDto( UserDetails user, String token){
        this.user = user;
        this.token = token;
    }

    public AuthResponseDto( String message){
        this.message = message;
    }

}
