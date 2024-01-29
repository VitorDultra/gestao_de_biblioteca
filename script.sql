-- Criando o Banco de Dados
 
 CREATE DATABASE gestao_de_biblioteca
 
 -- Usando o Banco de Dados
 
 USE gestao_de_biblioteca
 
 -- Criando as tabelas
 
 CREATE TABLE livros (
	book_id INT IDENTITY(1,1) NOT NULL
		CONSTRAINT pk__book_id PRIMARY KEY,
	title VARCHAR(200) NOT NULL,
	author_id INT NOT NULL
		CONSTRAINT fk__author_id__author_id FOREIGN KEY REFERENCES [autores](author_id),
	yearofpublication VARCHAR(4)
 );

CREATE TABLE autores (
	author_id INT IDENTITY(1,1) NOT NULL
		CONSTRAINT pk__author_id PRIMARY KEY,
	name VARCHAR(200)
);

CREATE TABLE emprestimos (
	loan_id INT IDENTITY(1,1) NOT NULL
		CONSTRAINT pk_loan_id PRIMARY KEY,
	book_id INT NOT NULL
		CONSTRAINT fk__book_id_book_id FOREIGN KEY REFERENCES [livros](book_id),
	loandate DATE,
	returndate DATE
);

-- Inserindo registros nas tabelas

INSERT INTO autores VALUES
('Elena Sylverton'),
('Victor Everglen'),
('Isadora Nightshade'),
('Quentin Stormcloak'),
('Seraphina Moonlight'),
('Xander Shadowcaster'),
('Luna Starfall'),
('Felix Emberheart'),
('Aria Dreamweaver'),
('Zephyr Skydancer')



INSERT INTO livros VALUES 
('Sombra das Estrelas', 1,'2018'), 
('Sombras do Passado', 1,'2015'),  
('Caminhos da Lua Azul', 1,'2017'), 
('O Jardim Secreto das Estrelas', 1,'2019'), 
('Entre Asas de Borboletas', 1,'2022'), 
('A Canção dos Ventos Noturnos', 1,'2014') 

INSERT INTO livros VALUES 
('A Chama Eterna', 2,'2019'), 
('Sussurros da Floresta Encantada', 2,'2016'), 
('O Enigma das Estrelas Cadentes', 2,'2018'), 
('A Dança das Fadas', 2,'2020'), 
('Além do Portal Mágico', 2,'2014'), 
('A Busca pela Fonte da Eternidade', 2,'2017') 

INSERT INTO livros VALUES 
('O Reino dos Sonhos', 3,'2020'), 
('O Refúgio das Sombras', 3,'2016'), - 
('A Dança dos Corvos', 3,'2018'), 
('Entre Rosas e Espinhos', 3,'2020'), 
('A Canção da Lua Desvanecida', 3,'2014'), - 
('O Mistério da Chama Eterna', 3,'2017') 

INSERT INTO livros VALUES 
('A Espada do Crepúsculo', 4,'2017'), 
('Sombras na Torre do Crepúsculo', 4,'2015'), 
('A Espada do Vento Cortante', 4,'2018'), 
('O Despertar da Tempestade', 4,'2020'), 
('Entre Brumas e Relâmpagos', 4,'2014'), 
('A Canção do Trovão Silencioso', 4,'2017') - 

INSERT INTO livros VALUES 
('A Canção da Lua', 5,'2022'), 
('Luas Perdidas', 5,'2016'),
('Entre Sombras e Estrelas', 5,'2018'), 
('O Jardim Secreto da Meia-Noite', 5,'2020'), 
('Canto dos Corvos', 5,'2014'), 
('A Dança das Fadas Lunar', 5,'2017') - 

INSERT INTO livros VALUES 
('O Enigma das Sombras', 6,'2016'), 
('Crepúsculo da Alma', 6,'2016'), 
('Sombras do Passado', 6,'2018'), 
('O Refúgio das Estrelas', 6,'2020'), 
('Caminhos da Lua Esquecida', 6,'2014'), 
('A Canção dos Ventos Noturnos', 6,'2017') 

INSERT INTO livros VALUES 
('Caminho das Estrelas', 7,'2021'), 
('Alvorada Cósmica', 7,'2016'), 
('Sussurros da Nebulosa', 7,'2018'), 
('O Jardim das Estrelas Cadentes', 7,'2020'), 
('A Dança da Lua Violeta', 7,'2014'), 
('Entre Sombras e Cometas', 7,'2017') - 

INSERT INTO livros VALUES 
('O Artefato Perdido', 8,'2015'), 
('Chamas da Eternidade', 8,'2016'), 
('A Sinfonia das Sombras', 8,'2018'), 
('O Portal da Aurora', 8,'2020'), 
('Caminhos do Crepúsculo', 8,'2014'), 
('A Canção dos Ventos Flamejantes', 8,'2017')  

INSERT INTO livros VALUES 
('O Portal Encantado', 9,'2014'), 
('Além do Horizonte Encantado', 9,'2016'), 
('Sussurros da Floresta Onírica', 9,'2018'),
('O Jardim dos Sonhos Perdidos', 9,'2020'),
('Caminhos da Lua Prateada', 9,'2014'),
('A Canção das Estrelas Cadentes', 9,'2017') 

INSERT INTO livros VALUES 
('As Asas do Tempo', 10,'2019'), 
('Ventos da Liberdade', 10,'2016'),
('A Dança das Nuvens Luminosas', 10,'2018'),
('O Portal da Aurora Celestial', 10,'2020'),
('Caminhos do Crepúsculo Alado', 10,'2014'),
('A Canção dos Ventos Eternos', 10,'2017') 

book_id INT, loandate DATE, returndate DATE


INSERT INTO emprestimos VALUES 
(3,'2019-01-01','2019-05-05'),
(9,'2020-03-20','2020-06-06'),
(10,'2017-05-19',NULL),
(12,'2021-09-10','2022-02-20'),
(15,'2021-08-07','2022-01-17'),
(16,'2016-04-03',NULL),
(17,'2019-05-28',NULL),
(18,'2021-11-11',NULL),
(21,'2017-04-19','2017-08-08'),
(22,'2016-01-19','2016-09-10'),
(23,'2019-02-01',NULL),
(24,'2021-03-09','2021-06-19'),
(25,'2015-04-04',NULL),
(28,'2017-07-17',NULL),
(33,'2017-09-09','2017-11-11'),
(34,'2017-03-27','2017-06-20'),
(36,'2021-11-21','NULL'),
(39,'22-12-12','2023-04-20'),
(44,'2018-04-15',NULL),
(45,'2016-09-16',NULL),
(46,'2017-07-14',NULL),
(48,'2021-05-20',NULL),
(49,'2015-06-26','2015-12-26'),
(51,'2015-06-05','2015-12-05'),
(54,'2021-01-01','2021-05-05'),
(56,'2018-06-06','2018-07-20'),
(57,'2020-10-20','2020-12-01'),
(58,'2017-12-07',NULL),
(59,'2019-01-19','2019-07-14'),
(60,'2021-10-10',NULL),
(61,'2015-06-22','2016-01-02'),
(62,'2017-08-29',NULL)


-- Desafios

Escreva uma consulta para obter todos os livros emprestados no momento, incluindo o título do livro, nome do autor e a data de empréstimo.

SELECT e.book_id, l.title, a.name, e.loandate
FROM livros l
inner join emprestimos e
on l.book_id = e.book_id
inner join autores a
on l.author_id = a.author_id
ORDER BY a.name

 Crie uma stored procedure chamada RegistrarDevolucao que, dado um EmprestimoID, marque a data de devolução como a data atual.
 
CREATE PROCEDURE EXEC [dbo].[prc_registrar_devolucao] 
    @loan_id INT 
AS
BEGIN
    -- Verificar se o empréstimo existe
   IF NOT EXISTS (SELECT 1 FROM emprestimos WHERE loan_id = 24 )
    BEGIN
        PRINT 'Empréstimo não encontrado.'
        RETURN
    END

    -- Marcar a data de devolução como a data atual
    UPDATE emprestimos
    SET returndate = GETDATE()
    WHERE  loan_id = 24

    PRINT 'Devolução registrada com sucesso.'
END
GO

Escreva uma consulta para encontrar o autor com mais livros emprestados no momento.

SELECT a.name
FROM autores a
INNER JOIN livros l
ON a.author_id = l.author_id
INNER JOIN emprestimos e
ON l.book_id = e.book_id
GROUP BY a.name

Crie uma função chamada CalcularDiasAtraso que, dado um EmprestimoID, retorne o número de dias de atraso na devolução 
(considerando a data de devolução em relação à data esperada de devolução).

ALTER FUNCTION dbo.CalcularDiasAtraso_teste(@loan_id INT)
RETURNS INT
AS
BEGIN
    DECLARE @DiasAtraso INT;

    SELECT @DiasAtraso = DATEDIFF(DAY, 60, GETDATE())
    FROM emprestimos
    WHERE loan_id = 22;

    -- Retorna 0 se não houver atraso
    RETURN CASE WHEN @DiasAtraso < 0 THEN 0 ELSE @DiasAtraso END;
END;

Escreva uma consulta para listar todos os livros que ainda não foram emprestados.

SELECT l.title, e.loandate
FROM autores a
INNER JOIN livros l
ON a.author_id = l.author_id
LEFT JOIN emprestimos e
ON l.book_id = e.book_id
WHERE e.loandate IS NULL 

Escreva uma consulta para listar todos os livros que foram emprestados.

SELECT l.title, e.loandate
FROM autores a
INNER JOIN livros l
ON a.author_id = l.author_id
INNER JOIN emprestimos e
ON l.book_id = e.book_id
