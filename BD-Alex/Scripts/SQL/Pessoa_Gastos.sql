Create database Familia;

use Familia;

create table Pessoa (
idPessoa int primary key auto_increment,
nomePessoa varchar (50),
dtNascimento date,
profissaoPessoa varchar (100)
) auto_increment = 01;

create table Gastos (
idGasto int primary key auto_increment,
dtGasto date,
valorGasto varchar (100),
DescricaoGasto varchar (100)
) auto_increment = 01;

alter table Gastos add column idPessoa int;

alter table Gastos add foreign key(idPessoa) references Pessoa(idPessoa);

update Gastos set idPessoa = 2 where idGasto in (7, 8, 5);
update Gastos set idPessoa = 1 where idGasto in (3);
update Gastos set idPessoa = 3 where idGasto in (1, 2);
update Gastos set idPessoa = 4 where idGasto in (4);
update Gastos set idPessoa = 5 where idGasto in (6);
update Gastos set idPessoa = 6 where idGasto in (9);

insert into Pessoa (nomePessoa, dtNascimento, profissaoPessoa) values 
('Carlos Belmiro','1999/06/15','Administrador Geral'),
('Gabriel Cardoso','1987/02/20','CTO'),
('Leonardo Correia','1989/02/15','Analista de Sistemas'),
('Carolina Almeida','1994/12/06','Desenvolvedor Front-End'),
('Letícia Simões','1999/02/03','Gerente de Projetos'),
('David Bryan','2001/02/01','DEsenvolvedor Front-End');

insert into Gastos (dtGasto, valorGasto, DescricaoGasto) values 
('2020/01/20','1000,00','Cadeira Gamer RaidMax'),
('2019/02/15','5000,00','MacBook Air pro'),
('2020/03/05','2000,00','Xiaomi mi 9T Pro'),
('2020/05/12','150,00','Fone Bluetooth Xiaomi'),
('2019/08/19','8000,00','Computador Gamer'),
('2017/08/02','500,00','Máquina de café'),
('2019/06/26','5000,00','Monitor Curvado Gamer LED'),
('2018/04/04','2500,00','Kit Pedaleira Boss ME-80'),
('2020/09/28','1000,00','Mouse Gamer Rayzer');

select * from Pessoa;

select * from Gastos;

select * from Pessoa where profissaoPessoa = 'Desenvolvedor Front-End';

select * from Gastos where valorGasto = '5000,00';

select idGasto, p.dtGasto, valorGasto, DescricaoGasto, 
         p.idPessoa, c.nomePessoa, dtNascimento, profissaoPessoa from 
           Gastos as p,Pessoa as c where p.idPessoa = c.idPessoa and c.nomePessoa = 'Gabriel Cardoso';
           
update Gastos set valorGasto = '9000,00' where  idGasto = 5;         

delete from Gastos where idGasto = 2 or idGasto = 9; 



