CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
id bigint AUTO_INCREMENT,
habilidade varchar(255) NOT NULL,
descricao varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classes (habilidade)
VALUES ("Arqueiro");
INSERT INTO tb_classes (habilidade)
VALUES ("Mago");
INSERT INTO tb_classes (habilidade)
VALUES ("Assassino");
INSERT INTO tb_classes (habilidade)
VALUES ("Necromante");
INSERT INTO tb_classes (habilidade)
VALUES("Curandeiro");


SELECT * FROM tb_classes;


CREATE TABLE tb_personagens (
id bigint AUTO_INCREMENT,
nome varchar (255), 
poder_ataque bigint NOT NULL,
poder_defesa bigint NOT NULL,
poder_contrataque bigint NOT NULL,
poder_recuperacao bigint NOT NULL,
classes_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);


INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, poder_contrataque, poder_recuperacao, classes_id)
VALUES ("Kaled", 2500, 1000, 2200, 3000, 1);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, poder_contrataque, poder_recuperacao, classes_id)
VALUES ("Caliope", 3500, 1000, 2900, 2000, 2);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, poder_contrataque, poder_recuperacao, classes_id)
VALUES ("Aprigio", 4000, 2000, 3000, 1000, 3);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, poder_contrataque, poder_recuperacao, classes_id)
VALUES ("Galadriel", 2500, 500, 1200, 800, 4);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, poder_contrataque, poder_recuperacao, classes_id)
VALUES ("Lia", 1000, 3000, 1100, 2000, 5);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, poder_contrataque, poder_recuperacao, classes_id)
VALUES ("Pasmen", 2500, 1000, 2200, 1000, 4);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, poder_contrataque, poder_recuperacao, classes_id)
VALUES ("Vulcanix", 3700, 2000, 1200, 900, 3);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, poder_contrataque, poder_recuperacao, classes_id)
VALUES ("Longe", 3500, 1000, 2200, 3000, 1);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000; 
SELECT * FROM tb_personagens WHERE nome LIKE "%c%"; 

SELECT nome, poder_ataque, poder_defesa, poder_contrataque from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

SELECT nome, poder_ataque, poder_defesa, poder_contrataque from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = 1 = tb_personagens.classes_id;





