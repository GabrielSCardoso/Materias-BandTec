create database PraticaFuncionario;
use PraticaFuncionario;

create table Setor (
idSetor int primary key auto_increment,
nomeSetor varchar (50),
numAndar varchar (10)
)auto_increment = 10;

create table Funcionario (
idFuncionario int primary key auto_increment,
nomeFuncionario varchar (50),
telefone varchar (11),
salario decimal(7,2),
check (salario > 0),
fkSetor int,
foreign key (fkSetor) references Setor(idSetor)
)auto_increment = 1;

create table Acompanhante (
fkFuncionario int,
foreign key (fkFuncionario) references Funcionario(idFuncionario),
idAcompanhante int, 
primary key (idAcompanhante, fkFuncionario),
nomeAcompanhante varchar (50),
relacao varchar (50),
dtNasc date
);

insert into Setor (nomeSetor, numAndar) values 
('Recursos Humanos','1º Andar'),
('Administrativo','3º Andar'),
('Financeiro','2º Andar'),
('Setor operacional','5º Andar'),
('Setor comercial','4º Andar');

insert into Funcionario (nomeFuncionario, telefone, salario, fkSetor) values 
('Jóse Augusto','11987820924','15000','10'),
('Elias Vitor','11987800024','13260','11'),
('João Figueiredo Júnior','11978898924','5000','12'),
('Sebastião Antonio','11987899854','2500','13'),
('Caleb Santos','11987898000','10000','14'),
('Andreia Campos','11987815924','20000','10'),
('Ayla Rayssa','11987898644','6230','11'),
('Sandra Almada','11987795924','9550','12'),
('Marcos Kevin','11987816324','4500','13'),
('Laís Barros','11987897504','9580','14');

insert into Acompanhante (fkFuncionario, idAcompanhante, nomeAcompanhante, relacao, dtNasc) values
('11','100','Pedro Sampaio','Irmão','1996/05/20'),
('12','101','Emili Castro','Namorada','2001/05/05'),
('13','102','João Figueiredo','Pai','1978/08/25'),
('14','103','Sheyla Silva','Prima','1994/06/26'),
('15','104','Gabriel Roma','Primo','2002/02/15'),
('16','105','Thiago Gimenezz','Namorado','2000/08/29'),
('17','106','Livia lima','Irmã','1998/10/10'),
('18','107','William Smith','Marido','1988/08/02'),
('19','108','Mark Walberg','Irmão','1990/09/12'),
('20','109','Alessandro Pascal','Marido','1979/12/02');

select * from Setor;
select * from Funcionario;
select * from Acompanhante;

/*G*/
select * from Setor as s, Funcionario as f where s.idSetor = f.fkSetor;

/*H*/
select * from Setor as s, Funcionario as f where s.idSetor = f.fkSetor and s.nomeSetor = 'Financeiro';

/*I*/
select * from  Acompanhante as s, Funcionario as f where f.idFuncionario = s.fkFuncionario;

/*J*/
select * from Acompanhante as s, Funcionario as f where f.idFuncionario = s.fkFuncionario and f.nomeFuncionario = 'Elias Vitor';

/*K*/
select * from Funcionario as f, Setor as s, Acompanhante as a where idSetor = f.fkSetor and f.idFuncionario = a.fkFuncionario;

/*L*/
select sum(salario) as Soma_Salario, avg(salario) as Media_Salario from Funcionario;

/*M*/
select sum(salario) as Soma_Salario, avg(salario) as Media_Salario from Funcionario where salario > 5000;

/*N*/
select max(salario) as Max_Salario, min(salario) as Min_Salario from Funcionario;

/*O*/
select count(salario) as Pgto_Cadastrado from Funcionario;

/*P*/
select count(salario) as Pgto_Cadastrado from Funcionario where salario < 10000;
