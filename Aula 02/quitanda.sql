-- Query criar banco de dados
CREATE DATABASE db_quitanda;

-- Querry deletar banco de dados/ estrutura
DROP DATABASE db_quitanda;

-- Query começar a usar banco de dados
USE db_quitanda;

-- Query para criar tabela e popular
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal(6,2) not null,
    primary key(id)
    );
    
-- Visualizar tabela
SELECT * FROM tb_produtos;

-- Popular tabela
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("laranja", 50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("banana", 200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("uva", 1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("perâ", 500, 2.99);

-- buscas especificas
SELECT nome, quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE preco < 5.00 AND quantidade < 100;

-- Desabilitar nossa segurança do sql é no número 0, 1 é habilitado
SET SQL_SAFE_UPDATES = 1;

-- Atualizar colunas da tabela
UPDATE tb_produtos SET preco = 8.80 WHERE id = 1;

-- Deletar itens
DELETE FROM tb_produtos WHERE id = 2 OR id  = 3 OR id = 4;

-- Modificar coluna/item 
ALTER TABLE tb_produtos MODIFY preco decimal (6,2);

-- Adicionar item a tabela
ALTER TABLE tb_produtos ADD descrição varchar (255);

-- excluir coluna da tabela
ALTER TABLE tb_produtos DROP descrição;

-- alterar nome da coluna
ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar(255);
