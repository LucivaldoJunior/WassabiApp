CREATE SCHEMA IF NOT EXISTS `wasabi_db` DEFAULT CHARACTER SET utf8;

USE `wasabi_db`;

DROP SCHEMA IF EXISTS `wasabi_db`;

DROP TABLE IF EXISTS `cliente`;
DROP TABLE IF EXISTS `produto`;
DROP TABLE IF EXISTS `pedido`;

CREATE TABLE IF NOT EXISTS `cliente`(
	`id` INT NOT NULL AUTO_INCREMENT,
    
	`nome` VARCHAR(65) NOT NULL,
    `cpf` VARCHAR(19) NOT NULL,
    `telefone` VARCHAR(16) NOT NULL,
    `endereco` VARCHAR(70) NOT NULL,
    `senha` VARCHAR(150) NOT NULL,
    `cartao` VARCHAR(20),
    
    UNIQUE(`cpf`),
	
    CONSTRAINT `cliente_pk` PRIMARY KEY(`id`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS categoria (
    id INT NOT NULL AUTO_INCREMENT,

    nome VARCHAR(40) NOT NULL,
    image VARCHAR(90) NOT NULL,

    UNIQUE(nome),

    CONSTRAINT categoria_pk PRIMARY KEY(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `produto_has_categoria`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `categoria_id` INT NOT NULL,
    `produto_id` INT NOT NULL,
    
    FOREIGN KEY (`produto_id`) REFERENCES `produto`(`id`) ON DELETE CASCADE,
	FOREIGN KEY (`categoria_id`) REFERENCES `categoria`(`id`) ON DELETE CASCADE,
    CONSTRAINT `produto_has_categoria_pk` PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `produto`(
	`id` INT NOT NULL AUTO_INCREMENT,
    
	`nome` VARCHAR(100) NOT NULL,
    `image` VARCHAR(150),
    `descricao` VARCHAR(250) NOT NULL,
    `preco` DECIMAL(6,2) NOT NULL,
    `quantidade` INT DEFAULT 0,

	CONSTRAINT `produto_pk` PRIMARY KEY(`id`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pedido`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `cliente_id` INT NOT NULL,
    `produto_id` INT NOT NULL,
    
    `created_at` DATETIME NOT NULL,
    `quantidade` INT NOT NULL,
    `isDelivery` BOOLEAN NOT NULL,
    
	FOREIGN KEY(`cliente_id`) REFERENCES `cliente`(`id`) ON DELETE CASCADE,
    FOREIGN KEY(`produto_id`) REFERENCES `produto`(`id`) ON DELETE CASCADE,
	CONSTRAINT `pedido_pk` PRIMARY KEY(`id`)
) ENGINE = InnoDB;