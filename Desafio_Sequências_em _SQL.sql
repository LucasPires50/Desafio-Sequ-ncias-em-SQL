/*
Desafio: Sequências em SQL

ETAPA - 1 

Criamos uma tabela com todos os filmes da série "Harry Potter", com uma coluna sequel_id que 
corresponde ao id da sequência para cada filme.*/

/*Comando para criar uma Banco de Dados*/
CREATE DATABASE senai;
USE senai;

CREATE TABLE movies (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    released INTEGER,
    sequel_id INTEGER);

INSERT INTO movies 
    VALUES (1, "Harry Potter and the Philosopher's Stone", 2001, 2);
INSERT INTO movies 
    VALUES (2, "Harry Potter and the Chamber of Secrets", 2002, 3);
INSERT INTO movies 
    VALUES (3, "Harry Potter and the Prisoner of Azkaban", 2004, 4);
INSERT INTO movies 
    VALUES (4, "Harry Potter and the Goblet of Fire", 2005, 5);
INSERT INTO movies 
    VALUES (5, "Harry Potter and the Order of the Phoenix ", 2007, 6);
INSERT INTO movies 
    VALUES (6, "Harry Potter and the Half-Blood Prince", 2009, 7);
INSERT INTO movies 
    VALUES (7, "Harry Potter and the Deathly Hallows – Part 1", 2010, 8);
INSERT INTO movies 
    VALUES (8, "Harry Potter and the Deathly Hallows – Part 2", 2011, NULL);
 
 SELECT * FROM movies;
 
 /*Faça um SELECT que vai mostrar o título de cada 
filme ao lado do título da sequência (ou NULL caso ele não tenha uma sequência).*/


# Exemplo de self join
SELECT movies.title AS FILMES , sequencia.title AS SEQUÊNCIAS 
FROM movies 
LEFT OUTER JOIN movies sequencia 
ON movies.sequel_id = sequencia.id;

# Comando para mostrar as auterações na tabela
DESC movies;
# Comando alterar o tipo da variavel de uma coluna 
ALTER TABLE movies CHANGE COLUMN title title VARCHAR(150);

/*Alterar os titulos dos filmes para português usando Update*/

UPDATE movies SET title = "Harry Potter e a Pedra Filosofal" WHERE id = 1;
UPDATE movies SET title = "Harry Potter e a Câmara Secreta" WHERE id = 2;
UPDATE movies SET title = "Harry Potter e o prisioneiro de azkaban" WHERE id = 3;
UPDATE movies SET title = "Harry Potter e o Cálice de Fogo" WHERE id = 4;
UPDATE movies SET title = "Harry Potter e a Ordem da Fênix" WHERE id = 5;
UPDATE movies SET title = "Harry Potter e o Príncipe Mestiço" WHERE id = 6;
UPDATE movies SET title = "Harry Potter e as Relíquias da Morte - Parte 1" WHERE id = 7;
UPDATE movies SET title = "Harry Potter e as Relíquias da Morte - Parte 2" WHERE id = 8;

SELECT * FROM movies;

