use livraria;

CREATE TABLE Livros(
Id INT AUTO_INCREMENT,
Autor VARCHAR (255) NOT NULL,
Sexo_Autor ENUM ('MASCULINO', 'FEMININO') NOT NULL,
Numero_Paginas INT NOT NULL,
Editora VARCHAR (255) NOT NULL,
Valor_Capa FLOAT NOT NULL,
Valor_Kindle FLOAT NOT NULL,
Ano_Publicacao INT NOT NULL,
PRIMARY KEY (Id)
);

alter table livros
add column livro varchar (55);

INSERT INTO Livros VALUES
(DEFAULT, 'Robert T Kiyosaki', 'Masculino', 336, 'Alta Books', 61.53, 58.45, '2018', 'Pai rico pai pobre'),
(DEFAULT, 'Carlos S Dweck', 'Feminino', 312, 'Objetiva', 38.99, 14.95, '2017', 'Mindset'),
(DEFAULT, 'Dale Carnegie', 'Masculino', 256, 'Sextante', 38.99, 33.24, '2019', 'Como fazer amigos e influenciar pessoas'),
(DEFAULT, 'Willian P Young', 'Masculino', 240, 'Arqueiro', 35.99, 17.90, '2008', 'A cabana'),
(DEFAULT, 'Charles Duhigg', 'Masculino', 408, 'Objetiva', 42.99, 29.90, '2012', 'O poder do habito'),
(DEFAULT, 'Robert C Martin', 'Masculino', 425, 'Alta Books', 91.99, 87.39, '2009', 'Codigo Limpo'),
(DEFAULT, 'Greg Mckeown', 'Masculino', 272, 'Sextante', 53.58, 33.24, '2015', 'Essencialismo'),
(DEFAULT, 'Nathalia Arcuri', 'Feminino', 176, 'Sextante', 32.86, 17.09, '2018', 'Me poupe'),
(DEFAULT, 'Simon Sinek', 'Masculino', 256, 'Sextante', 50.58, 24.90, '2018', 'Comece pelo porque'),
(DEFAULT, 'Paulo Coelho', 'Masculino', 206, 'Paralela', 24.70, 14.70, '2017', 'O Alquimista');


-- 1) trazer todos os dados

select * from livros;

-- 2) trazer o nomne do livro e nome da editora

SELECT livro, Editora
from livros;

-- 3) Trazer o nome do livro, editora e autores do sexo masculino

SELECT livro, Editora, Autor, Sexo_Autor
FROM Livros
WHERE Sexo_Autor = 'Masculino';

-- 4) Trazer o nome do livro, número de páginas do livro e autores do sexo feminino

SELECT livro, Numero_Paginas, Sexo_Autor
FROM Livros
WHERE Sexo_Autor = 'Feminino';

-- 5) Trazer o nome do autor, editora e ano de publicação dos livros que tenham sido publicados a partir do ano 2017

SELECT autor, editora, Ano_Publicacao
FROM Livros
WHERE Ano_Publicacao = '2017';

-- 6) Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextannte ou pela Editora Altas Books

SELECT Autor, Editora, Sexo_Autor
FROM Livros
WHERE Sexo_Autor = 'Masculino' AND Editora = 'Sextante' OR Editora = 'Alta Books';

-- 7) Trazer o nome do livro, do autor, número de páginas, editora, ano da publicação e valor com capa comum

SELECT livro, autor, Numero_Paginas, Editora, Ano_Publicacao, Valor_Capa
FROM Livros;

-- 8) Trazer o nome do livro, autor, número de páginas e valor no Kindle

SELECT livro, Autor, Numero_Paginas, Valor_Kindle
FROM Livros;

-- 9) Trazer o nome dos autores com livros publicados pela editora Sextante

SELECT autor, Editora, livro
FROM Livros
WHERE Editora = 'Sextante';

-- 10) Trazer o nome do livro, autores, valor com capa comum e valor no Kindle

SELECT livro, Autor, Valor_Capa, Valor_Kindle
FROM Livros;

select * from livros;