CREATE DATABASE e_commerce;
USE e_commerce;

CREATE TABLE produtos (
id bigint auto_increment,
nome_produto varchar(255) not null,
categoria varchar (255) not null,
valor decimal (6,2) not null,
fabricante varchar (255),
marca varchar (255),
primary key (id)
);

INSERT INTO produtos (nome_produto, categoria, valor, fabricante, marca)
values ("X-BOX 360", "Console", 3000.00, "Flextronics", "");
INSERT INTO produtos (nome_produto, categoria, valor, fabricante, marca)
values ("Vassoura WAP ", "Limpeza", 100.00, "","");
INSERT INTO produtos (nome_produto, categoria, valor, fabricante, marca)
values ("Placa de video GFORCE RTX 3050", "Informatica", 1899.00, "NVIDIA", "");
INSERT INTO produtos (nome_produto, categoria, valor, fabricante, marca)
values ("Blusa", "Roupa", 200.00, "CHINA", "Nike");
INSERT INTO produtos (nome_produto, categoria, valor, fabricante, marca)
values ("Tênis Fila Float", "Calçados", 350.99, "Brasil", "Fila");
INSERT INTO produtos (nome_produto, categoria, valor, fabricante, marca)
values ("Camisa", "Roupa", 200.79, "China", "Adidas");
INSERT INTO produtos (nome_produto, categoria, valor, fabricante, marca)
values ("Aspirador de pó", "Limpeza", 550.00, "Electrolux", "");
INSERT INTO produtos (nome_produto, categoria, valor, fabricante, marca)
values ("PlayStation 5", "Console", 4000.00, "Sony", "");

SELECT * FROM produtos;
SELECT * FROM produtos WHERE valor > 500;
SELECT * FROM produtos WHERE valor < 500;

UPDATE produtos SET marca = "Sony" WHERE id = 9;