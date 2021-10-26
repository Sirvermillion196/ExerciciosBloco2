CREATE TABLE `Temas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`descrição` bigint NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Postagens` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`Titulo` varchar(255) NOT NULL,
	`Texto` varchar(255) NOT NULL,
	`data` TIMESTAMP NOT NULL,
	`tema_id` bigint NOT NULL,
	`usuario_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuario` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL AUTO_INCREMENT,
	`usuario` varchar(255) NOT NULL AUTO_INCREMENT,
	`senha` varchar(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk0` FOREIGN KEY (`tema_id`) REFERENCES `Temas`(`id`);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario`(`id`);




