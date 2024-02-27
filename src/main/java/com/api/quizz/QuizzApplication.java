package com.api.quizz;


import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Contact;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.info.License;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
@OpenAPIDefinition(
		info = @Info(
				title = "API Quizz",
				version = "1.0",
				description = "<h2>API pour créer des quizz en ligne et tester les endpoints avec springdoc-openapi v2.3.0.</h2>" +
								"<ul>Cette bibliothèque prend en charge: " +
									"<li>OpenAPI 3</li>" +
									"<li>Spring-boot v3 (Java 17 & Jakarta EE 9)</li>" +
									"<li>JSR-303, specifically for @NotNull, @Min, @Max, and @Size.</li>" +
									"<li>Swagger-ui</li>" +
									"<li>OAuth 2</li>" +
									"<li>GraalVM native images</li>" +
								"</ul>" +
								"Lien vers la documentation : <a href=\"https://springdoc.org\">OpenAPI 3 & Spring Boot</a>",
				license = @License(name = "Apache 2.0", url = "http://quizzMania"),
				contact = @Contact(url = "http://quizzmania.com", name = "Eric", email = "Eric@quizzmania.com")
		)
)
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
