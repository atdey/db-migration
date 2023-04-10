package com.javacapability.dbmigration;

import org.flywaydb.core.Flyway;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DbMigrationApplication {

	public static void main(String[] args) {
		//migrateWithFlyway();
		SpringApplication.run(DbMigrationApplication.class, args);
	}

	private static void migrateWithFlyway() {
		Flyway flyway = Flyway.configure().load();
		flyway.migrate();
	}

}
