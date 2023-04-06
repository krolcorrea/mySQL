CREATE DATABASE colaboradores_rh;
USE colaboradores_rh;
CREATE TABLE informacoes (
	id bigint auto_increment,
	nome_funcionario varchar(255) not null,
    tipo_contrato varchar (255) not null,
    tempo_contrato decimal (2,2) not null,
    idade_funcionario decimal not null,
    setor_trabalho varchar (255) not null,
    primary key (id)
    );

INSERT INTO informacoes (nome_funcionario, tipo_contrato, tempo_contrato, idade_funcionario, setor_trabalho, salario)
values ("Joaquina", "CLT", 1 , 30, "T.I", 3000);
INSERT INTO informacoes (nome_funcionario, tipo_contrato, tempo_contrato, idade_funcionario, setor_trabalho, salario)
values ("Carolina", "CLT", 2, 32, "T.I", 6000);
INSERT INTO informacoes (nome_funcionario, tipo_contrato, tempo_contrato, idade_funcionario, setor_trabalho, salario)
values ("Maria Angela", "CLT", 1, 25, "Limpeza", 1500);
INSERT INTO informacoes (nome_funcionario, tipo_contrato, tempo_contrato, idade_funcionario, setor_trabalho, salario)
values ("Mayara", "P.J", 1, 26, "T.I", 4000);
INSERT INTO informacoes (nome_funcionario, tipo_contrato, tempo_contrato, idade_funcionario, setor_trabalho, salario)
values ("Florinda", "P.J", 2, 23, "Recepção", 1800);

SELECT * FROM informacoes;    
SELECT * FROM informacoes WHERE salario > 2000; 
SELECT * FROM informacoes WHERE salario < 2000;


ALTER TABLE  informacoes MODIFY tempo_contrato decimal;
ALTER TABLE informacoes ADD salario decimal (8,8);
ALTER TABLE informacoes MODIFY salario int;

UPDATE informacoes SET tempo_contrato = 3 WHERE id = 2;


