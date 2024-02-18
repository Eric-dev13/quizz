package com.api.quizz;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class QuizzApplication {

	public static void main(String[] args) {
		SpringApplication.run(QuizzApplication.class, args);
	}

//	@Override
//	public void run(ApplicationArguments args) throws Exception {
//		// Ajouter le message que vous souhaitez afficher dans la console
//		System.out.println("L'application QuizzMania a démarré avec succès!");
//	}

}
