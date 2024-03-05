package com.api.quizz.configuration.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity

public class SecurityConfigurer {
    @Bean
    public SecurityFilter securityFilter() {
        return new SecurityFilter();
    }
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain configure(HttpSecurity http) throws Exception {
        // Standard pour les REST API
        http
            // Désactive le partage de ressources entre origines (CORS), limitant par défaut les requêtes à la même origine.
            .cors(cors -> cors.disable())
            // Désactive la protection contre la falsification de requêtes intersites (CSRF), nécessaire pour les API REST sans sessions basées sur un navigateur.
            .csrf(AbstractHttpConfigurer::disable)
            // Définit une politique de session sans état, ce qui signifie que Spring Security ne créera ni ne gérera pas les sessions HTTP, conformément aux meilleures pratiques des API REST.
            .sessionManagement(
                    httpSecuritySessionManagementConfigurer -> httpSecuritySessionManagementConfigurer.sessionCreationPolicy(SessionCreationPolicy.STATELESS)
            )
            // Ajoute un filtre personnalisé nommé securityFilter avant le UsernamePasswordAuthenticationFilter, logique d'authentification par Bearer.
            .addFilterBefore(securityFilter(),UsernamePasswordAuthenticationFilter.class)
            .authorizeHttpRequests(auth -> {
                auth.requestMatchers("/api/players/**").authenticated();
                auth.requestMatchers("/api/games/findAll").hasAuthority("ADMIN");
                auth.anyRequest().permitAll();
            });
        return http.build();
    }
}

