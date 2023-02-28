package com.jmRocha;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoMvcApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoMvcApplication.class, args);
		System.out.println("Fazer um biuld da aplicação, Comandos: \n"
				+ "Java-build-package\n"
				+ "package -e\n"
				+ "Subir a Aplicação no CMD, Comandos: \n"
				+ "C:\\Users> cd * local do build *"
				+ "java -jar * build do APP *"
				);
	}
}
