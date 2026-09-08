-- EXERCICIO n1

create database sprint1;

use sprint1;

create table Atleta ( 
idAtleta int primary key,
nome varchar (40),
modalidade varchar (40),
qtdMedalha int 
);

-- Só escolhi os que tinham mais medalhas mesmo pra ficar mais facil

insert into Atleta (idAtleta, nome, modalidade, qtdMedalha) VALUES
(1, "Michael Phelps", "Natação", 28),
(2, "Larisa Latynina", "Ginástica artística", 18),
(3, "Marit Bjorgen", "Esqui ccross-country", 15),
(4, "Nikolai Andrianov", "Ginástica artística", 15),
(5, "Katie Ledecky", "Natação", 14);

-- Tive que colocar cross com dois "c" pq cross é um comando e não sei se tem como resolver

select * from Atleta;
select nome, qtdMedalha from Atleta; 
select 	* from Atleta WHERE modalidade="Natação";
select * from Atleta order by modalidade;
select * from Atleta order by qtdMedalha desc;
select nome from Atleta where nome like "%s%";
select nome from Atleta where nome like "M%";
select nome from Atleta where nome like "%O";
select nome from Atleta where nome like "%r_";

drop table Atleta;

-- EXERCICIO 2

create table Musica (
    idMusica int primary key,
    titulo varchar(40),
    artista varchar(40),
    genero varchar(40)
);

-- só musicao top

insert into Musica (idMusica, titulo, artista, genero) values
(1, "Coisas que Eu Sei", "Jorge Vercillio", "MPB"),
(2, "A Flor", "Los Hermanos", "Rock Nacional"),
(3, "Admiravel Chip Novo", "Pitty", "Rock Nacional"),
(4, "Given Up", "Linkin Park", "Rock"),
(5, "Sorri Sou Rei", "Natiruts", "Reggae"),
(6, "Jigsaw Falling Into Place", "Radiohead", "Rock");

select * from Musica;
select titulo, artista from Musica;
select * from Musica where genero = "Rock";
select * from Musica where artista = "Los Hermanos";
select * from Musica order by titulo;
select * from Musica order by artista desc;
select * from Musica where titulo like 'A%';
select * from Musica where artista like '%o';
select * from Musica where genero like '_o%';
select * from Musica where titulo like '%o_';
drop table Musica;

-- exercicio 3

create table Filme (
    idFilme int primary key,
    titulo varchar(50),
    genero varchar(40),
    diretor varchar(40)
);

-- coloquei logo meus favoritos 

insert into Filme (idFilme, titulo, genero, diretor) values
(1, "Duna Parte 1", "Ficcao Cientifica", "Denis Villeneuve"),
(2, "Duna Parte 2", "Ficcao Cientifica", "Denis Villeneuve"),
(3, "Little Miss Sunshine", "Comedia", "Jonathan Dayton"),
(4, "Coraline", "Animacao", "Henry Selick"),
(5, "Memories of Murder", "Suspense", "Bong Joon-ho"),
(6, "Vertigo", "Suspense", "Alfred Hitchcock"),
(7, "Parasite", "Suspense", "Bong Joon-ho"),
(8, "Cidade de Deus", "Drama", "Fernando Meirelles"),
(9, "The Batman", "Acao", "Matt Reeves");

select * from Filme;
select titulo, diretor from Filme;
select * from Filme where genero = "Suspense";
select * from Filme where diretor = "Bong Joon-ho";
select * from Filme order by titulo;
select * from Filme order by diretor desc;
select * from Filme where titulo like "D%";
select * from Filme where diretor like "%o";
select * from Filme where genero like "_u%";
select * from Filme where titulo like "%d_";
drop table Filme;


-- EXERSCIO 4

create table Professor (
    idProfessor int primary key,
    nome varchar(50),
    especialidade varchar(40),
    dtNasc date
);

insert into Professor (idProfessor, nome, especialidade, dtNasc) values
(1, "Marcos", "T.I.", "1985-03-12"),
(2, "Matheus", "Sistemas Operacionais", "1990-07-25"),
(3, "Davi", "Arquitetura Computacional", "1988-11-04"),
(4, "Clara", "Banco de Dados", "2005-05-19"),
(5, "Thiago", "Socioemocional", "1983-10-13"),
(6, "Frizza", "Algoritmos", "1995-01-30");

select * from Professor;
select especialidade from Professor;
select * from Professor where especialidade = "Algoritmos";
select * from Professor order by nome;
select * from Professor order by dtNasc desc;
select * from Professor where nome like "M%";
select * from Professor where nome like "%s";
select * from Professor where nome like "_a%";
select * from Professor where nome like "%r_";
drop table Professor;

-- exercicio 5

create table Jogo (
    idJogo int primary key,
    nome varchar(50),
    comentario varchar(200),
    ranking int
);

insert into Jogo (idJogo, nome, comentario, ranking) values
(1, "Castlevania SOTN", "Classico do genero metroidvania, trilha sonora marcante", 2),
(2, "Castlevania Aria of Sorrow", "Otimo jogo de GBA, sistema de almas minha coisa favorita no jogo", 1),
(3, "Zelda BOTW", "Mundo aberto revolucionario para a franquia, diferente de tudo que ja vi em zelda", 3),
(4, "Bloodstained Ritual of the Night", "Sucessor espiritual do Castlevania, não tão bom quanto mas muito bom", 4),
(5, "League of Legends", "Jogo competitivo de MOBA que ninguem aguenta mais", 6),
(6, "Outer Wilds", "Exploracão espacial com loop temporal, narrativa incrivel", 5);

select * from Jogo;
select nome from Jogo;
select comentario from Jogo where nome = "Outer Wilds";
select * from Jogo order by nome;
select * from Jogo order by ranking desc;
select * from Jogo where nome like "C%";
select * from Jogo where nome like "%s";
select * from Jogo where nome like "_a%";
select * from Jogo where nome like "%h_";
select * from Jogo where nome <> "Minecraft";
drop table Jogo;

-- LISTA NUMERO 2

/*
Exibir todos os dados da tabela.
Atualizar a quantidade de medalhas do atleta com id=1.
Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3.
Atualizar o nome do atleta com o id=4.
Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date.
Atualizar a data de nascimento de todos os atletas.
Excluir o atleta com o id=5.
Exibir os atletas onde a modalidade é diferente de natação.
Exibir os dados dos atletas que têm a quantidade de medalhas maior ou igual a 3.
Modificar o campo modalidade do tamanho 40 para o tamanho 60.
Descrever os campos da tabela mostrando a atualização do campo modalidade.
Limpar os dados da tabela.
*/

SELECT * FROM Atleta;

UPDATE Atleta SET qtdMedalha=29 WHERE idAtleta=1;
UPDATE Atleta SET qtdMedalha=25 WHERE idAtleta=(1,2);
UPDATE Atleta SET nome="Nikolai Andrianovee" WHERE idAtleta=4;

ALTER TABLE Atleta ADD COLUMN dtNasc DATE;

DELETE FROM Atleta WHERE idAtleta=5;

SELECT modalidade FROM Atleta WHERE modalidade != "Natação";

SELECT * FROM Atleta WHERE qtdMedalha>=3;

ALTER TABLE Atleta MODIFY COLUMN modalidade VARCHAR (60);

SELECT * FROM Atleta;

TRUNCATE Atleta;

-- EXERCICIO 2

/*
Exibir todos os dados da tabela.
Adicionar o campo curtidas do tipo int na tabela.
Atualizar o campo curtidas de todas as músicas inseridas.
Modificar o campo artista do tamanho 40 para o tamanho 80.
Atualizar a quantidade de curtidas da música com id=1.
Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3.
Atualizar o nome da música com o id=5.
Excluir a música com o id=4.
Exibir as músicas onde o gênero é diferente de funk.
Exibir os dados das músicas que têm curtidas maior ou igual a 20.
Descrever os campos da tabela mostrando a atualização do campo artista.
Limpar os dados da tabela.
*/

SELECT * FROM musica;

ALTER TABLE musica ADD COLUMN curtidas INT;
UPDATE musica SET curtidas=1234 WHERE idMusica=1;
UPDATE musica SET curtidas=3124 WHERE idMusica=2;
UPDATE musica SET curtidas=12314 WHERE idMusica=3;
UPDATE musica SET curtidas=4324 WHERE idMusica=(4);
UPDATE musica SET curtidas=4124 WHERE idMusica=5;
UPDATE musica SET curtidas=3190 WHERE idMusica=6;

ALTER TABLE musica MODIFY COLUMN artista VARCHAR (60);

UPDATE musica SET curtidas=4321 WHERE idMusica=1;
UPDATE musica SET curtidas=1234 WHERE idMusica IN(2,3);
UPDATE musica SET titulo="nomedaora" WHERE idMusica=5;


DELETE FROM musica WHERE idmusica=4;

SELECT * FROM musica WHERE genero !="funk";

SELECT * FROM musica WHERE curtidas >=3000;

DESC musica;

TRUNCATE musica;

-- EXERCICIO 3

/*
Exibir todos os dados da tabela.
Adicionar o campo protagonista do tipo varchar(50) na tabela.
Atualizar o campo protagonista de todos os filmes inseridos.
Modificar o campo diretor do tamanho 40 para o tamanho 150.
Atualizar o diretor do filme com id=5.
Atualizar o diretor dos filmes com id=2 e com o id=7.
Atualizar o título do filme com o id=6.
Excluir o filme com o id=3.
Exibir os filmes em que o gênero é diferente de drama.
Exibir os dados dos filmes que o gênero é igual ‘suspense’.
Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor.
Limpar os dados da tabela.
*/

SELECT * FROM filme;

ALTER TABLE filme ADD COLUMN protagonista VARCHAR (50);

UPDATE filme SET protagonista="Paul Atreides" WHERE idFilme IN(1,2);
UPDATE filme SET protagonista="Olive" WHERE idFilme=3;
UPDATE filme SET protagonista="Coraline" WHERE idFilme=4;
-- MUITO FILME 
ALTER TABLE filme MODIFY COLUMN diretor VARCHAR (150);
UPDATE filme SET diretor="leonardo fogaça" WHERE idFilme=5;
UPDATE filme SET diretor="leonardo fogaça" WHERE idFilme in(2,7);
UPDATE filme SET titulo="Acabou a criatividade" WHERE idFilme=6;
DELETE FROM filme WHERE idfilme=3;
SELECT * FROM filme WHERE genero !="drama";

DESC filme;

TRUNCATE filme;

-- EXERCICIO 4

/*
Exibir todos os dados da tabela.
Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, ‘assistente’ ou ‘titular’.
Atualizar os professores inseridos e suas respectivas funções.
Inserir um novo professor.
Excluir o professor onde o idProfessor é igual a 5.
Exibir apenas os nomes dos professores titulares.
Exibir apenas as especialidades e as datas de nascimento dos professores monitores.
Atualizar a data de nascimento do idProfessor igual a 3.
Limpar a tabela Professor.
*/

SELECT * FROM professor;

ALTER TABLE professor ADD COLUMN funcao VARCHAR (50);

UPDATE professor SET funcao="titular" WHERE idProfessor=1;
UPDATE professor SET funcao="assistente" WHERE idProfessor=2;
UPDATE professor SET funcao="monitor" WHERE idProfessor=3;
UPDATE professor SET funcao="titular" WHERE idProfessor=4;
UPDATE professor SET funcao="monitor" WHERE idProfessor=5;
UPDATE professor SET funcao="assistente" WHERE idProfessor=6;

INSERT INTO professor (idProfessor, nome, especialidade, dtNasc, funcao)
VALUES (7, "João", "Programação", "1992-08-15", "titular");

DELETE FROM professor WHERE idProfessor=5;

SELECT nome FROM professor WHERE funcao="titular";

SELECT especialidade, dtNasc FROM professor WHERE funcao="monitor";

UPDATE professor SET dtNasc="1989-11-04" WHERE idProfessor=3;

TRUNCATE professor;


-- EXERCICIO 5

/*
Exibir todos os dados da tabela.
Exibir apenas os coordenadores dos cursos.
Exibir apenas os dados dos cursos de uma determinada sigla.
Exibir os dados da tabela ordenados pelo nome do curso.
Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
Exibir os dados da tabela dos cursos cujo nome comece com uma determinada letra.
Exibir os dados da tabela dos cursos cujo nome termine com uma determinada letra.
Exibir os dados da tabela dos cursos cujo nome tenha como segunda letra uma determinada letra.
Exibir os dados da tabela dos cursos cujo nome tenha como penúltima letra uma determinada letra.
Elimine a tabela.
*/


SELECT * FROM Jogo;

SELECT nome FROM Jogo;

SELECT * FROM Jogo WHERE ranking=1;

SELECT * FROM Jogo ORDER BY nome;

SELECT * FROM Jogo ORDER BY ranking DESC;

SELECT * FROM Jogo WHERE nome LIKE "C%";

SELECT * FROM Jogo WHERE nome LIKE "%s";

SELECT * FROM Jogo WHERE nome LIKE "_a%";

SELECT * FROM Jogo WHERE nome LIKE "%h_";

DROP TABLE Jogo;