CREATE DATABASE db_escola;
USE db_escola;


CREATE TABLE tb_alunos (
id bigint auto_increment,
nome_aluno varchar (255) not null,
serie int not null,
nota decimal(2,2),
nome_responsavel varchar(255) not null,
nro_contato int not null,
primary key (id)
);

ALTER TABLE tb_alunos MODIFY nota decimal (6,2);
ALTER TABLE tb_alunos MODIFY nro_contato bigint;

INSERT INTO tb_alunos (nome_aluno, serie, nota, nome_responsavel, nro_contato)
values ("José", 6, 7.8, "Maria", 11999552264);
INSERT INTO tb_alunos (nome_aluno, serie, nota, nome_responsavel, nro_contato)
values ("Maria", 6, 9.2, "Josefina", 11999552274);
INSERT INTO tb_alunos (nome_aluno, serie, nota, nome_responsavel, nro_contato)
values ("Frederico", 6, 7.8, "Mariana", 11999562264);
INSERT INTO tb_alunos (nome_aluno, serie, nota, nome_responsavel, nro_contato)
values ("Valeska", 6, 10.00, "Marlei", 11989552264);
INSERT INTO tb_alunos (nome_aluno, serie, nota, nome_responsavel, nro_contato)
values ("Ricardo", 6, 5.0, "Felizberta", 11999582264);
INSERT INTO tb_alunos (nome_aluno, serie, nota, nome_responsavel, nro_contato)
values ("Epitafio", 6, 6.2, "Marilena", 11999552464);
INSERT INTO tb_alunos (nome_aluno, serie, nota, nome_responsavel, nro_contato)
values ("Rego Freitas", 6, 4.8, "Juventina", 11999553264);
INSERT INTO tb_alunos (nome_aluno, serie, nota, nome_responsavel, nro_contato)
values ("Tafarel", 6, 8.0, "Josevaldo", 11999752264);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 5.0 WHERE id = 7;