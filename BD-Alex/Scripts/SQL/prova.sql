create database Revista;

use Revista;

create table Revista (
ID_Revista int primary key auto_increment,
Titulo varchar (40),
Editora varchar (20),
Assunto varchar (30)
) auto_increment = 01;

insert into Revista (Titulo, Editora, Assunto) values 
('A procura de DEVs','Exame','Tecnologia'),
('Coronavirus','Exame','Saúde'),
('Como saber Investir','Epoca','Economia'),
('A procura de DEVs','Isto é','Tecnologia'),
('Coronavirus','Veja','Saúde'),
('Supercars Sound','Quatro Rodas','Evento'),
('Desenho Abstrato','Epoca','Artes');

select * from Revista;

select Titulo, assunto from Revista;

select * from revista order by editora;

select * from Revista order by Assunto;

select * from revista order by editora;

select * from revista order by Titulo desc;

select * from revista where titulo like '%e__';

select * from revista where assunto like 't%';

select * from revista where editora like '_e%';

select * from revista where titulo like '%u_';

update revista set editora = 'Exame' where ID_Revista = 4; 

select * from revista;

delete from revista where ID_Revista = 2;

drop table revista;


