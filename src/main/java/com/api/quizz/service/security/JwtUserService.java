package com.api.quizz.service.security;

import org.springframework.security.core.userdetails.UserDetails;

public interface JwtUserService extends UserService{
    String generateJwtForUser(UserDetails user);
    UserDetails getUserFromJwt(String jwt);
}
