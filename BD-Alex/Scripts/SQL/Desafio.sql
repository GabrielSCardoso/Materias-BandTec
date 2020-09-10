create database AvaliacaoGrupo;
use AvaliacaoGrupo;

create table Grupo (
codGrupo int primary key auto_increment,
nomeGrupo varchar(45),
descricaoProjeto varchar(80));

insert into Grupo (nomeGrupo, descricaoProjeto) values 
('GRUPO 1','Controle de lotação no metrô'),
('GRUPO 15','Controle de temperatura e umidade em ambientes de TI'),
('GRUPO 16','Controle de temperatura em chocadeiras');

select * from Grupo;

create table Aluno (
raAluno int primary key,
nomeAluno varchar(45),
emailAluno varchar(45),
fkGrupoPi int, foreign key (fkGrupoPi) references Grupo(codGrupo)
);

insert into Aluno (raAluno,nomeAluno,emailAluno,fkGrupoPi) values 
(010101,'Fábio Pereira','fabpereira@gmail.com',1),
(010102,'Mônica Fernandes','mfernandes@gmail.com',1),
(010103,'Marcia Junqueira','marcia1231@hotmail.com',1),
(010104,'Junior Souza','souzajunior@gmail.com',1),
(010105,'Wesley Moraes','wes12@gmail.com',2),
(010106,'Roberta Nunes','ro.nunes@gmail.com',2),
(010107,'Daniela Diniz','danidiniz@hotmail.com',2),
(010108,'Davi Sousa','davi8901@gmail.com',2),
(010109,'Higor Hernandes','higor.nandes@gmail.com',3),
(010110,'Sarah Galvão','sarahgalvao12@gmail.com',3),
(010111,'Fabiana Oliveira','fabiana.oliver@hotmail.com',3),
(010112,'Jussara Gouveia','ju.ssara@gmail.com',3);

select * from Aluno;

create table Professor (
codProfessor int primary key auto_increment,
nomeProfessor varchar(45),
disciplinaProfessor varchar(45)) auto_increment 10000;

insert into Professor(nomeProfessor, disciplinaProfessor) values 
('Joaquim Goulart','Pesquisa e Inovação'),
('Anderson Sousa','Algoritmos'),
('Alessandra Pimentel','Banco de Dados'),
('Henrique de Olveira','Arquitetura Computacional');

select * from Professor;

create table GrupoProfessor(
fkGrupo int, foreign key (fkGrupo) references Grupo(codGrupo),
fkProfessor int, foreign key (fkProfessor) references Professor(codProfessor),
primary key (fkGrupo, fkProfessor),
dataAvaliacao datetime,
notaAvaliacao decimal(3,2));

insert into GrupoProfessor (fkGrupo, fkProfessor, dataAvaliacao, notaAvaliacao) values 
(1,10000,'2020/02/02 13:00',8.9),
(1,10001,'2020/02/02 13:00',7.0),
(1,10002,'2020/02/02 13:00',9.0),
(1,10003,'2020/02/02 13:00',9.9),
(2,10000,'2020/02/03 13:00',9.0),
(2,10001,'2020/02/03 13:00',9.0),
(2,10002,'2020/02/03 13:00',9.0),
(2,10003,'2020/02/03 13:00',9.9),
(3,10000,'2020/02/03 13:00',9.9),
(3,10001,'2020/02/03 13:00',9.5),
(3,10002,'2020/02/03 13:00',7.0),
(3,10003,'2020/02/03 13:00',8.9);

select * from GrupoProfessor;

select * from Grupo,Aluno where fkGrupoPi = codGrupo; -- grupo com seus respectivos alunos
select * from Grupo JOIN Aluno on Aluno.fkGrupoPi = grupo.codGrupo; -- grupo com seus respectivos alunos com JOIN

select * from Grupo,Aluno where fkGrupoPi = codGrupo and nomeGrupo = "GRUPO 15"; -- alunos de um determinado grupo

select round(avg(notaAvaliacao)) as 'Média das notas no geral' from GrupoProfessor; -- media de todas as notas com arredondamento

select avg(notaAvaliacao) as 'Média das notas no geral' from GrupoProfessor; -- media de todas as notas

select max(notaAvaliacao) as 'Nota máxima geral', min(notaAvaliacao) as 'Nota mínima geral' from GrupoProfessor; -- max e min de todas as notas

select sum(notaAvaliacao) as 'Soma das notas no geral' from GrupoProfessor; -- soma de todas as notas

select * from Professor, Grupo, GrupoProfessor where fkGrupo = codGrupo and fkProfessor = codProfessor; -- dados dos professores, grupos e notas correspondentes 

select * from Professor, Grupo, GrupoProfessor where fkGrupo = codGrupo and fkProfessor = codProfessor and nomeGrupo = "GRUPO 15"; -- dados dos professores, grupos de apenas um grupo

select nomeGrupo from Grupo, GrupoProfessor,Professor where fkGrupo = codGrupo and fkProfessor = codProfessor and nomeProfessor = 
'Joaquim Goulart'; -- grupos que foram avaliados por um professor

select * from Grupo, Aluno, Professor, GrupoProfessor where fkGrupo = codGrupo and fkGrupoPi = codGrupo and fkProfessor = codProfessor;
-- dados do grupo, dos respectivos alunos, professores q avaliaram e as notas

select count(distinct(notaAvaliacao)) as 'Quantidade de notas distintas' from GrupoProfessor; -- quantidade de notas distintas

select nomeProfessor, avg(notaAvaliacao) as 'Média das notas', sum(notaAvaliacao) as 'soma das notas' from GrupoProfessor, Professor 
where fkProfessor = codProfessor group by(codProfessor); -- media e soma das notas agrupadas por professor

select nomeGrupo, avg(notaAvaliacao) as 'Média da notas', sum(notaAvaliacao) as 'soma das notas' from GrupoProfessor, Grupo where
fkGrupo = codGrupo group by(codGrupo); -- media e soma das notas agrupadas por grupo

select nomeProfessor, max(notaAvaliacao) as 'Nota máxima', min(notaAvaliacao) as 'Nota mínima' from GrupoProfessor, Professor 
where fkProfessor = codProfessor group by(codProfessor); -- nota maxima e minima agrupada por professor

select nomeGrupo, max(notaAvaliacao) as 'Nota máxima', min(notaAvaliacao) as 'Nota mínima' from GrupoProfessor, Grupo
where fkGrupo = codGrupo group by(codGrupo); -- nota maxima e minima agrupada por grupo

