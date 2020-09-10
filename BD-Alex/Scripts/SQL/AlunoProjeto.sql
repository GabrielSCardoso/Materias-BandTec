create database AlunoProjeto;
use AlunoProjeto;

create table Aluno (
ra int primary key,
Nome varchar (100),
Telefone varchar (11),
fkProjeto int,
foreign key (fkProjeto) references Projeto(idProjeto),
fkRa int,
foreign key (fkRa) references Aluno(ra)
); 

create table Projeto (
idProjeto int primary key auto_increment,
Nome varchar (100),
descricao varchar (150)
) auto_increment = 1;

create table Acompanhante (
fkAluno int,
foreign key (fkAluno) references Aluno(ra),
idAcompanhante int, 
primary key (idAcompanhante, fkAluno),
Nome varchar (50),
relacao varchar (50)
);

insert into Aluno values 
('01201002', 'Gabriel Rosa', '11962778755', '1', null),
('01201036', 'Alan Douglas', '11965403435', '2', '01201002'),
('01201077', 'Emile Souza', '11947851284', '3', '01201036');


insert into Projeto values 
('SPOOLL', 'Sensores Para Estacionamentos'),
('ZLProject', 'Sistema de criação Contratos'),
('Be The Hero', 'App para ONGs'),
('TRqueimadores', 'Site de Venda');

insert into Acompanhante values
('01201002', '1','Emanuele Silva', 'Namorada'),
('01201002', '2','Carolina Alves', 'Namorada'),
('01201077', '3','Helton Costa', 'Namorado');

select * from Aluno;
select * from Projeto;
select * from Acompanhante;

select * from aluno, projeto where fkProjeto = idProjeto;

select * from aluno, acompanhante where fkAluno = ra;

select * from aluno as a, aluno as r where r.ra = a.fkra;

select * from aluno, projeto where fkProjeto = idProjeto and projeto.nome = 'ZLProject';

select * from aluno, projeto, acompanhante where fkProjeto = idprojeto and ra = fkAluno;