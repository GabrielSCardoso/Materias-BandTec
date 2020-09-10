create database Filme; 

use Filme;

create table Filme (

ID_Filme int primary key,
Titulo varchar (100),
Genero varchar (100),
Diretor varchar (100));

select * from Filme; 

insert into Filme values 
(1, 'A Volta dos que Não Foram', 'Ação', 'Adriano Stanieck'),
(2, 'Incendio na Caixa d´Agua', 'Ação/Aventura', 'Marcela Konoha'), 
(3, 'A trança do Rei Careca', 'Comedia/Ação/Aventura', 'Adriano Klabin'),
(4, 'A Volta dos mortos', 'Ação', 'Billie Ramon'),
(5, 'De volta á você', 'Romance', 'Renato Sodré'),
(6, 'Ordem Negativa', 'Suspense/Ação', 'Marcio Donato'),
(7, 'Um dia como Babá', 'Comedia/Ação', 'Álvaro Monte'),
(8, 'O Evangelho de João', 'Religioso/Suspense', 'Erick La Vozie'),
(9, 'O novo Mundo', 'Ficção cientifica', 'Larissa Simões'),
(10, 'De Volta a Terra', 'Ação/Suspense/Comedia', 'Camila Anderson'),
(11, 'Fast and Furious', 'Ação/Aventura', 'Daniel Cabromi');

insert into Filme values 
(12, 'Fast and Furios 7', '', '');

insert into Filme (Titulo, ID_Filme) values 
('She is Crazy', 13);

insert into Filme (ID_Filme, Titulo) values
(14, 'He and She'),
(15, 'Carga Explosiva'),
(16, 'Velocidade Maxíma'),
(17, 'Caçada Mortal'),
(18, 'Perdedores'),
(19, 'Missão Impossível');

select * from Filme;

update Filme set Diretor = 'Leticia Almeida' where ID_Filme = 5;

update Filme set Diretor = 'Gabriel Cardoso' where ID_Filme = 6 or ID_Filme = 11;
 
select * from Filme;  

update Filme set Genero = 'Suspense', Diretor = 'Marcus Vinicius' where ID_Filme = 4 or ID_Filme = 9; 

update Filme set Genero = 'Suspense' where ID_Filme = 5 or ID_Filme = 6;

select * from Filme;

update Filme set  Genero = 'Ação/Aventura' where ID_Filme = 2 or ID_Filme = 11;

update Filme set Diretor = 'Ariana Sodré' where ID_Filme = 2;

update Filme set Genero = 'Romance', Diretor = 'Samuel Navarro' where ID_Filme = 3 or ID_Filme = 7 or ID_Filme = 8;

update Filme set Genero = 'Ficção cientifica' where ID_Filme = 10;

select * from Filme;

delete from Filme where ID_Filme = 6;

delete from Filme where ID_Filme = 11 or ID_Filme = 5; 

alter table Filme add Ano varchar (100); 
 
 select * from Filme;
 
 alter table Filme modify Titulo varchar(50);
 
 select * from Filme;
 
 alter table Filme drop column Ano;

select Titulo from Filme;

select Diretor from Filme; 

select * from Filme order by Diretor desc; 


