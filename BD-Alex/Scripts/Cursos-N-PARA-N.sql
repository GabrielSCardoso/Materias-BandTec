create database Cursos;
use Cursos;

create table Alunos (
idAluno int primary key,
nomeAluno varchar (50),
bairro varchar (50)
);

create table Curso (
idCurso int primary key auto_increment,
nomeCurso varchar (50),
coordenador varchar (50)
) auto_increment = 10;

create table relacao (
fkCurso int,
foreign key (fkCurso) references Curso(idCurso),
fkAluno int,
foreign key (fkAluno) references Alunos(idAluno),

primary key (fkAluno, fkCurso),
nivel varchar (25),
dtInicio date,
mediaGlobal decimal (4,2),
check (mediaGlobal >= 0)
);

insert into Alunos values 
('1','Gabriel Cardoso','Casa Verde'),
('2','Matheus Souza','Cachoeirinha');

insert into Curso (nomeCurso, coordenador) values 
('Inglês','Mario Donatto'),
('Espanhol','Anderson Silva');

insert into Relacao values 
/*('10','1','A3','2019/02/19','10');*/
('11','1','I2','2019/08/20','09'),
('10','2','B2','2020/01/15','08'),
('11','2','A3','2020/05/06','10');

select * from Alunos;
select * from Curso;
select * from Relacao;

select * from Alunos, Curso, Relacao where idAluno = fkAluno and idCurso = fkCurso;

select * from Alunos, Curso, Relacao where idAluno = fkAluno and idCurso = fkCurso and nomeCurso like 'Inglês';

select * from Alunos, Curso, Relacao where idCurso = fkCurso and idAluno = fkAluno and nomeAluno like 'Gabriel Cardoso';

select sum(mediaGlobal) as Soma_Medias, avg(mediaGlobal) as Medias_das_Medias from Relacao;

select max(mediaGlobal) as Maior_Media, min(mediaGlobal) as Menor_Media from Relacao;

select fkCurso as Curso, max(mediaGlobal) as 
	Maior_Media, min(mediaGlobal) as Menor_Media from Relacao group by fkCurso;
    
select fkAluno as Aluno, max(mediaGlobal) as 
	Maior_Media, min(mediaGlobal) as Menor_Media from Relacao group by fkAluno;   
    
select mediaGlobal from relacao;
   
select distinct(mediaGlobal) as Medias_Distintas from Relacao;

select count(mediaGlobal) as Medias from Relacao;
    
select count(distinct mediaGlobal) as Medias from Relacao;





