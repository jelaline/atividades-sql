CREATE DATABASE Livraria;

use livraria;

create TABLE Livros(
Id INT AUTO_INCREMENT,
Livro VARCHAR (255) NOT NULL,
Autor VARCHAR (255) NOT NULL,
Sexo_Autor ENUM ('MASCULINO', 'FEMININO') NOT NULL,
Numero_Paginas INT NOT NULL,
Editora VARCHAR (255) NOT NULL,
Valor_Capa FLOAT NOT NULL,
Valor_Kindle FLOAT NOT NULL,
Ano_Publicacao INT NOT NULL,
PRIMARY KEY (Id)
);

INSERT INTO livros (Id, Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa, Valor_Kindle, Ano_Publicacao)
VALUES
(DEFAULT, 'Pai rico Pai pobre', 'Robert T Kiyosaki', 'Masculino', 336, 'Alta Books', 61.53, 58.45, '2018'),
(DEFAULT, 'Mindset', 'Carlos S Dweck', 'Feminino', 312, 'Objetiva', 38.99, 14.95, '2017'),
(DEFAULT, 'Como fazer amigos e influenciar pessoas', 'Dale Carnegie', 'Masculino', 256, 'Sextante', 38.99, 33.24, '2019'),
(DEFAULT, 'A cabana', 'Willian P Young', 'Masculino', 240, 'Arqueiro', 35.99, 17.90, '2008'),
(DEFAULT, 'O poder do habito', 'Charles Duhigg', 'Masculino', 408, 'Objetiva', 42.99, 29.90, '2012'),
(DEFAULT, 'Codigo limpo',  'Robert C Martin', 'Masculino', 425, 'Alta Books', 91.99, 87.39, '2009'),
(DEFAULT, 'Essencialismo', 'Greg Mckeown', 'Masculino', 272, 'Sextante', 53.58, 33.24, '2015'),
(DEFAULT, 'Me poupe',  'Nathalia Arcuri', 'Feminino', 176, 'Sextante', 32.86, 17.09, '2018'),
(DEFAULT, 'Comece pelo porque', 'Simon Sinek', 'Masculino', 256, 'Sextante', 50.58, 24.90, '2018'),
(DEFAULT, 'O Alquimista', 'Paulo Coelho', 'Masculino', 206, 'Paralela', 24.70, 14.70, '2017');

-- 1)Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00;

SELECT Livro, autor, valor_kindle
FROM Livros
WHERE Valor_Kindle < '40'
order by valor_kindle;

-- 2)  Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;

SELECT Livro, autor, Ano_Publicacao, Editora, Sexo_Autor
FROM livros
WHERE Ano_Publicacao > '2017' and Editora = 'Sextante' and Sexo_Autor = 'FEMININO';

-- 3) Trazer o nome do livro e editora de livros com mais de 200 páginas

SELECT Livro, Editora, Numero_Paginas
FROM Livros
WHERE Numero_Paginas > 200;

-- 4) Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C";

SELECT Livro, Numero_Paginas, Autor
FROM Livros
WHERE Autor LIKE 'C%';

-- 5) Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books;

SELECT Autor, Editora, Ano_Publicacao, Sexo_Autor
FROM livros
where Sexo_Autor = 'MASCULINO' AND Editora = 'Alta Books';

-- 6) Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;

SELECT Livro, Autor, Numero_Paginas, Editora, Ano_Publicacao, Valor_Capa
FROM livros
WHERE Valor_Capa > '50';

-- 7) Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia;

SELECT Livro, Editora, Valor_Capa, Autor
FROM livros
WHERE Autor LIKE 'Nathalia%';

-- 8) Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017;

SELECT Livro, Autor, Numero_Paginas, Ano_Publicacao
FROM livros
WHERE Ano_Publicacao <= '2017'
order by Ano_Publicacao;

-- 9) Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas;

SELECT Autor, Livro, Editora, Numero_Paginas
FROM livros
WHERE Editora LIKE 'Sextante' AND Ano_Publicacao > '200';

-- 10) Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante;

SELECT Livro, Autor, Editora, Valor_Capa
FROM livros
WHERE Valor_Capa > '30' AND Editora = 'Sextante';
