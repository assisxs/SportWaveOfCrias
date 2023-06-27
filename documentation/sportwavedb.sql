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

-- INSERT INTO `sportwavedb`.`product` (`name`, `description`, `brand`, `model`, `price`, `cover`, `featured`, `sport`, `category`, `createdAt`)
-- VALUES
--   ('Raquete de Beach Tennis', 'Raquete profissional de alta qualidade', 'Wilson', 'Pro Staff 97', 299.99, 'default.png', 1, 'Beach Tennis', 'Acessórios', NOW()),
--   ('Bola de Vôlei de Praia', 'Bola oficial para prática de vôlei de praia', 'Mikasa', 'VLS300', 49.99, 'default.png', 1, 'Vôlei de Praia', 'Acessórios', NOW()),
--   ('Prancha de Surf', 'Prancha de surf para iniciantes', 'Rip Curl', 'E-Bomb', 599.99, 'default.png', 1, 'Surf', 'Roupas', NOW()),
--   ('Short de Praia', 'Short de praia estiloso e confortável', 'Billabong', 'All Day Layback', 39.99, 'default.png', 0, 'Beach Tennis', 'Roupas', NOW()),
--   ('Óculos de Sol', 'Óculos de sol esportivo com proteção UV', 'Oakley', 'Radar EV Path', 149.99, 'default.png', 0, 'Vôlei de Praia', 'Acessórios', NOW()),
--   ('Prancha de Bodyboard', 'Prancha de bodyboard profissional', 'NMD', 'Ben Player PP', 199.99, 'default.png', 1, 'Surf', 'Acessórios', NOW()),
--   ('Camiseta de Beach Tennis', 'Camiseta de manga curta para prática de beach tennis', 'Nike', 'Court Dry', 29.99, 'default.png', 0, 'Beach Tennis', 'Roupas', NOW()),
--   ('Boné de Vôlei de Praia', 'Boné esportivo para proteção solar durante o vôlei de praia', 'Adidas', 'Beach Volley Cap', 19.99, 'default.png', 0, 'Vôlei de Praia', 'Acessórios', NOW()),
--   ('Parafina para Prancha', 'Parafina de alta aderência para prancha de surf', 'Sticky Bumps', 'Tropical', 9.99, 'default.png', 0, 'Surf', 'Acessórios', NOW()),
--   ('Calça de Surf', 'Calça de neoprene para prática de surf', 'Quiksilver', 'Syncro Series', 79.99, 'default.png', 0, 'Surf', 'Roupas', NOW());
-- INSERT INTO `sportwavedb`.`product` (`name`, `description`, `brand`, `model`, `price`, `cover`, `featured`, `sport`, `category`, `createdAt`)
-- VALUES

INSERT INTO `sportwavedb`.`product` (`name`, `description`, `brand`, `model`, `price`, `cover`, `featured`, `sport`, `category`)
VALUES
 ('Mormaii Flexxxa',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 1999.00,
 'Mormaii Flexxxa.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Mormaii Sunset Pro',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 1799.00,
 'Mormaii Sunset Pro.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Shark Predator',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 2399.00,
 'Shark Predator.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Kona K-doze Blue',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 1998.00,
 'Kona K-doze Blue.png',
true,
'Beach Tennis',
'Beach Tennis'),

('Viseira Track&Field Holográfica',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 169.90,
 'Viseira Track&Field Holográfica.png',
true,
'Beach Tennis',
'Beach Tennis'),

('Viseira Track&Field Translucida',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 159.90,
 'Viseira Track&Field Translucida',
true,
'Beach Tennis',
'Beach Tennis'),

('Viseira Mormaii Tour Unissex Preto',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 49.90, 
 'Viseira Mormaii Tour Unissex Preto.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Viseira Mormaii Roxo Vitoria Marquezini',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 49.90,
 'Viseira Mormaii Roxo Vitoria Marquezini.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Bolinhas Beach Tennis Penalty',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 39.90,
 'Bolinhas Beach Tennis Penalty.png',
true,
'Beach Tennis',
'Beach Tennis'),

('Bolinhas Beach Tennis Sandever',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 39.90,
 'Bolinhas Beach Tennis Sandever.png',
true,
'Beach Tennis',
'Beach Tennis'),

('Bolinhas Beach Tennis Mormaii',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 70.80,
 'Bolinhas Beach Tennis Mormaii.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Bolinhas Beach Tennis Kona',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 49.90,
 'Bolinhas Beach Tennis Kona.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Rede Beach Tennis 4 Faixas 8,20x0,8 Preto',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 246.67,
 'Rede Beach Tennis 4 Faixas 8,20x0,8 Preto.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Rede Beach Tennis BTN 900 Competition',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 899.99,
 'Rede Beach Tennis BTN 900 Competition.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Rede Beach Tennis Mormaii Premium Preta e Verde',
 'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
 1234.90,
 'Rede Beach Tennis Mormaii Premium Preta e Verde.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Rede Beach Tennis Shark Unissex Preta/Laranja',
'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
899.99,
'Rede Beach Tennis Shark Unissex Preta/Laranja.png',
true,
'Beach Tennis',
'Beach Tennis'),


('Meia Neoprene Realtex',
'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
109.99,
'Meia Neoprene.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Meia Neoprene Drop Shot',
'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
109.99,
'Meia Neoprene Drop Shot.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Meia Neopreme Shark',
'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
149.99,
'Meia Neopreme Shark.webp',
true,
'Beach Tennis',
'Beach Tennis'),

('Meia Neopreme Mormaii',
'Raquete desenvolvida para o atleta de beach tennis, que deseja ótima Elasticidade e resistência, durante a prática Raquete Beach tennis Flexxxa conta com uma boa potência e Ótimo controle, ideal para nível avançado e profissional',
'Mormaii', 
'unisex',
89.99,
'Meia Neopreme Mormaii.webp',
true,
'Beach Tennis',
'Beach Tennis');

INSERT INTO `sportwavedb`.`product` (`name`, `description`, `brand`, `model`, `price`, `cover`, `featured`, `sport`, `category`)
VALUES
('Bola de Vôlei de Praia Mikasa VXT30',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
229.99,
'Bola de Vôlei de Praia Mikasa VXT30.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Bola de Vôlei de Praia Copaya BV100',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
229.99,
'Bola de Vôlei de Praia Copaya BV100.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Bola de Vôlei de Praia Penalty XXI',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
135.99,
'Bola de Vôlei de Praia Penalty XXI.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Bola de Vôlei de Praia Penalty MG 3600',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
139.99,
'Bola de Vôlei de Praia Penalty MG 3600.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Óculos de Sol Mormaii Smash',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
449.99,
'Óculos de Sol Mormaii Smash.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Óculos de Vôlei de Praia BV500 Adulto',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
199.99,
'Óculos de Vôlei de Praia BV500 Adulto.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Óculos de Vôlei de Praia BVSG500',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
199.99,
'Óculos de Vôlei de Praia BVSG500.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Óculos de Sol Mormaii Smash Vini Font - Unissex',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
499.99,
'Óculos de Sol Mormaii Smash Vini Font - Unissex.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Rede de Vôlei com Faixa Sintética Gismar Redes - 9,5m',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
199.99,
'Rede de Vôlei com Faixa Sintética Gismar Redes - 9,5m.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Rede de Vôlei Copaya BV100',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
149.99,
'Rede de Vôlei Copaya BV100.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Rede de Vôlei recreação 5 metros - Evo Sports',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
39.90,
'Rede de Vôlei recreação 5 metros - Evo Sports.png',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Rede de Vôlei de Praia oficial BVN900',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
699.99,
'Rede de Vôlei de Praia oficial BVN900.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Manguito Curto para Voleibol Muvin Arrow MGT-100',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
31.90,
'Manguito Curto para Voleibol Muvin Arrow MGT-100.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Manguito Kanxa Essential Sport Vôlei - Adulto',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
41.90,
'Manguito Kanxa Essential Sport Vôlei - Adulto.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Manguito Lupo UV - Adulto',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
49.99,
'Manguito Lupo UV - Adulto.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Manguito Fila Performance',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
99.99,
'Manguito Fila Performance.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Camisa Térmica Masculina Manga Longa Adams com Proteção UPF4',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
49.99,
'Camisa Térmica Masculina Manga Longa Adams com Proteção UPF4.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Camisa Térmica Penalty Matís X UV50+ - Masculina',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
59.90,
'Camisa Térmica Penalty Matís X UV50+ - Masculina.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Camisa Térmica Segunda Pele Manga Longa Nord - Masculina',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
69.99,
'Camisa Térmica Segunda Pele Manga Longa Nord - Masculina.webp',
true,
'Vôlei de praia',
'Vôlei de praia'),

('Camisa Térmica Puma UV50+ Manga Longa - Masculina',
'Evolução Da Bola Matrizada, Com Uma Camada A Mais Para Maior Maciez, Menor Absorção De Água, Design Moderno E Arrojado, Com Mais Leveza E Precisão.',
'Mormaii', 
'unisex',
169.99,
'Camisa Térmica Puma UV50+ Manga Longa - Masculina.webp',
true,
'Vôlei de praia',
'Vôlei de praia');

INSERT INTO `sportwavedb`.`product` (`name`, `description`, `brand`, `model`, `price`, `cover`, `featured`, `sport`, `category`)
VALUES
('Prancha Rip Curl Dfk Medina 6´0 (4000)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
3825.00,
'Prancha Rip Curl Dfk Medina 6´0 (4000).webp',
true,
'Surf',
'Surf'),

('Prancha Rusty Smoothie 5.10 Fcs 2 (3700)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
3460.00,
'Prancha Rusty Smoothie 5.10 Fcs 2 (3700).webp',
true,
'Surf',
'Surf'),

('Prancha Rusty Smoothie 5.11 Fcs 2 (3500)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
3460.00,
'Prancha Rusty Smoothie 5.11 Fcs 2 (3500).jpg',
true,
'Surf',
'Surf'),

('Prancha Al Merrick - OG Flyer- Spine Tek - 5´10 - FCSII (5900)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
3459.00,
'Prancha Al Merrick - OG Flyer- Spine Tek - 5´10 - FCSII (5900).webp',
true,
'Surf',
'Surf'),

('Lycra Manga Longa Mormaii extraline Surf Masculina (200)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
197.90,
'Lycra Manga Longa Mormaii extraline Surf Masculina (200).webp',
true,
'Surf',
'Surf'),

('Lycra Rip Curl Manga Longa Corps l/s uv Masculina Preto (324)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
197.90,
'Lycra Rip Curl Manga Longa Corps l/s uv Masculina Preto (324).webp',
true,
'Surf',
'Surf'),

('Camiseta De Lycra Ripcurl Sunny Rays (FEM) (200)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
229.90,
'Camiseta De Lycra Ripcurl Sunny Rays (FEM) (200).jpg',
true,
'Surf',
'Surf'),

('Camiseta Lycra Rip Curl Grom Corpo L/SL (INF) (140)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
189.90,
'Camiseta Lycra Rip Curl Grom Corpo L/SL (INF) (140).jpg',
true,
'Surf',
'Surf'),

('Bermuda Rip Curl Forecast Bs 21" SM23 Masculina - Masculino (260)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
279.00,
'Bermuda Rip Curl Forecast Bs 21.webp',
true,
'Surf',
'Surf'),

('Bermuda Masculina Rip Curl React (169)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
258.90,
'Bermuda Masculina Rip Curl React (169).jpg',
true,
'Surf',
'Surf'),

('Bermuda Rip Curl Medina Black (299)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
229.00,
'Bermuda Rip Curl Medina Black (299).webp',
true,
'Surf',
'Surf'),

('Bermuda Billabong Sundays Pro Multi (229)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
229.90,
'Bermuda Billabong Sundays Pro Multi (229).webp',
true,
'Surf',
'Surf'),

('Deck Prancha Surf Rip Curl DT3 Marble - 3 Peças- Preto (230)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
229.90,
'Deck Prancha Surf Rip Curl DT3 Marble - 3 Peças- Preto (230).webp',
true,
'Surf',
'Surf'),

('Deck Rip Curl - DT 2 - Vermelho e Preto (150)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
229.90,
'Deck Rip Curl - DT 2 - Vermelho e Preto (150).avif',
true,
'Surf',
'Surf'),

('Deck Antiderrapante Rip Curl DT3 90 - Preto (159)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
159.90,
'Deck Antiderrapante Rip Curl DT3 90 - Preto (159).png',
true,
'Surf',
'Surf'),

('Deck de Surf Mormaii Cacimba - Unissex - Preto (199)',
'O material desta prancha é semelhante aos que são revestidos os Bodyboards profissionais.',
' Rusty', 
'unisex',
159.90,
'Deck de Surf Mormaii Cacimba - Unissex - Preto (199).webp',
true,
'Surf',
'Surf');

SELECT * FROM `sportwavedb`.`user`;
SELECT * FROM `sportwavedb`.`product`;
