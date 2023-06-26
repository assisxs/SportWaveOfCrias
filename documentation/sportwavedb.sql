SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

DROP SCHEMA IF EXISTS `sportwavedb`;
CREATE SCHEMA IF NOT EXISTS `sportwavedb` DEFAULT CHARACTER SET utf8 ;
USE `sportwavedb` ;

CREATE TABLE IF NOT EXISTS `sportwavedb`.`user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `username` VARCHAR(50) NULL,
  `password` VARCHAR(100) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `address` VARCHAR(45) NULL,
  `phone` VARCHAR(20) NULL,
  `createdAt` DATETIME NOT NULL DEFAULT NOW(),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `sportwavedb`.`product` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NULL,
  `brand` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `price` DECIMAL(10,2) UNSIGNED NOT NULL,
  `cover` VARCHAR(255) NULL,
  `featured` TINYINT NULL,
  `sport` ENUM('Beach Tennis', 'Vôlei de Praia', 'Surf') NULL,
  `category` ENUM('Roupas', 'Acessórios') NULL,
  `createdAt` DATETIME NOT NULL DEFAULT NOW(),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO `sportwavedb`.`user` (`name`, `username`, `password`, `email`, `address`, `phone`, `createdAt`)
VALUES
  ('Fernanda Silva', 'fernanda89', 'senha123', 'fernanda.silva@example.com', 'Rua das Flores, 123', '(11) 1234-5678', NOW()),
  ('Rafael Santos', 'rafael95', 'senha456', 'rafael.santos@example.com', 'Avenida das Palmeiras, 456', '(11) 9876-5432', NOW()),
  ('Juliana Lima', 'juliana77', 'senha789', 'juliana.lima@example.com', 'Travessa dos Lírios, 789', '(11) 2468-1357', NOW()),
  ('Pedro Oliveira', 'pedro80', 'senhaabc', 'pedro.oliveira@example.com', 'Alameda das Rosas, 246', '(11) 8642-9753', NOW()),
  ('Amanda Costa', 'amanda92', 'senhadef', 'amanda.costa@example.com', 'Praça das Orquídeas, 135', '(11) 7531-4862', NOW());

INSERT INTO `sportwavedb`.`product` (`name`, `description`, `brand`, `model`, `price`, `cover`, `featured`, `sport`, `category`, `createdAt`)
VALUES
  ('Raquete de Beach Tennis', 'Raquete profissional de alta qualidade', 'Wilson', 'Pro Staff 97', 299.99, 'default.png', 1, 'Beach Tennis', 'Acessórios', NOW()),
  ('Bola de Vôlei de Praia', 'Bola oficial para prática de vôlei de praia', 'Mikasa', 'VLS300', 49.99, 'default.png', 1, 'Vôlei de Praia', 'Acessórios', NOW()),
  ('Prancha de Surf', 'Prancha de surf para iniciantes', 'Rip Curl', 'E-Bomb', 599.99, 'default.png', 1, 'Surf', 'Roupas', NOW()),
  ('Short de Praia', 'Short de praia estiloso e confortável', 'Billabong', 'All Day Layback', 39.99, 'default.png', 0, 'Beach Tennis', 'Roupas', NOW()),
  ('Óculos de Sol', 'Óculos de sol esportivo com proteção UV', 'Oakley', 'Radar EV Path', 149.99, 'default.png', 0, 'Vôlei de Praia', 'Acessórios', NOW()),
  ('Prancha de Bodyboard', 'Prancha de bodyboard profissional', 'NMD', 'Ben Player PP', 199.99, 'default.png', 1, 'Surf', 'Acessórios', NOW()),
  ('Camiseta de Beach Tennis', 'Camiseta de manga curta para prática de beach tennis', 'Nike', 'Court Dry', 29.99, 'default.png', 0, 'Beach Tennis', 'Roupas', NOW()),
  ('Boné de Vôlei de Praia', 'Boné esportivo para proteção solar durante o vôlei de praia', 'Adidas', 'Beach Volley Cap', 19.99, 'default.png', 0, 'Vôlei de Praia', 'Acessórios', NOW()),
  ('Parafina para Prancha', 'Parafina de alta aderência para prancha de surf', 'Sticky Bumps', 'Tropical', 9.99, 'default.png', 0, 'Surf', 'Acessórios', NOW()),
  ('Calça de Surf', 'Calça de neoprene para prática de surf', 'Quiksilver', 'Syncro Series', 79.99, 'default.png', 0, 'Surf', 'Roupas', NOW());

SELECT * FROM `sportwavedb`.`user`;
SELECT * FROM `sportwavedb`.`product`;
