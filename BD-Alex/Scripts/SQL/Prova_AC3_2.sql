create database AC3_Analista;
use AC3_Analista;

create table Empresa (
idEmpresa int primary key auto_increment,
nomeEmpresa varchar (50),
dtFundacao date
) auto_increment = 10;

insert into Empresa (nomeEmpresa, dtFundacao) values
('LogiTec','1889/10/26'),
('ProgramC3','2005/02/26'),
('TechArrow','1999/05/17'),
('WorldCoup','2015/02/16');

select * from Empresa;

create table App (
idApp int primary key auto_increment,
nomeApp varchar (50),
generoApp varchar (25),
fkEmpresa int,
foreign key (fkempresa) references Empresa(idEmpresa)
) auto_increment = 100;

insert into App (nomeApp, generoApp, fkEmpresa) values
('TransmissionShow','nativos ','10'),
('Shortwave','Pago','10'),
('SpectrumTech','híbridos','11'),
('Fragments','híbridos','11'),
('Work Teleport','Freemium','12'),
('XiaNON','públicos ','12'),
('Guitar PS','Freemium','13'),
('Acustic Sound','privados','13');

select * from App;

create table Analista (
idAnalista int primary key auto_increment,
nomeAnalista varchar (50),
emailAnalista varchar (50)
) auto_increment = 1000;

insert into Analista (nomeAnalista, emailAnalista) values
('Carlos Antonio','CAntonio@hotmail.com.br'),
('Marcela Huerta','MarcelaHuerta@hotmail.com.br'),
('Erick Santos','SantosErick123@hotmail.com.br'),
('Flávio Biollo','BllFlavio@hotmail.com.br'),
('Antonio Carlos','Antonio2020@hotmail.com.br'),
('Gabriel Cardoso','GabrielCardososs@hotmail.com.br'),
('Marcus Vinicius','MarcusV951@hotmail.com.br'),
('Pedro Afonseca','Afonseca@hotmail.com.br'),
('Alex Coelho','CoelhoMal@hotmail.com.br'),
('Bruna Fernandes','brubruFernandes@hotmail.com.br'),
('Emili Bosco','Emiliii@hotmail.com.br'),
('Amanda Vitoria','AmandinhaVitoria@hotmail.com.br'),
('Juliana Kanashiro','Kanashiro2018@hotmail.com.br'),
('Freedie Silva','Silva360@hotmail.com.br'),
('Maicon Morias','MaiconMorais@hotmail.com.br'),
('Leticia Alpha','Lehleehh@hotmail.com.br');

select * from Analista;

create table AnalistaApp (
fkApp int, foreign key (fkApp) references App(idApp),
fkAnalista int, foreign key (fkAnalista) references Analista(idAnalista),
primary key (fkApp, fkAnalista),
Ganho decimal(7,2));

insert into AnalistaApp (fkApp, fkAnalista, Ganho) values 
('100','1000','15000'),
('100','1001','18000'),
('101','1002','20000'),
('101','1003','14000'),
('102','1004','12500'),
('102','1005','20000'),
('103','1006','25000'),
('103','1007','16500'),
('104','1008','14500'),
('104','1009','10000'),
('105','1010','11250'),
('105','1011','15000'),
('106','1012','15000'),
('106','1013','19800'),
('107','1014','18500'),
('107','1015','16200');

select * from AnalistaApp;

select * from Empresa, App where fkEmpresa = idEmpresa;

select * from Empresa, App where fkEmpresa = idEmpresa and nomeEmpresa = 'ProgramC3';

select avg(Ganho) as 'Media dos Ganhos', max(Ganho) as 'Maior Ganho' from AnalistaApp;

select max(Ganho) as 'Maior Ganho', min(Ganho) as 'Menor Ganho' from AnalistaApp;

select * from App, Analista, AnalistaApp where fkAnalista = idAnalista and fkApp = idApp;

select * from App, Analista, AnalistaApp where fkAnalista = idAnalista and fkApp = idApp and nomeApp = 'Work Teleport';

select * from App, Empresa, Analista, AnalistaApp where fkApp = idApp and fkEmpresa = idEmpresa and fkAnalista = idAnalista;

select nomeApp, avg(Ganho) as 'Média dos Ganho', sum(Ganho) as 'Soma dos Ganhos' from AnalistaApp, App
where fkApp = idApp group by(idApp); 

select nomeAnalista, avg(Ganho) as 'Média dos Ganho', sum(Ganho) as 'Soma dos Ganhos' from AnalistaApp, Analista
where fkAnalista = idAnalista group by(idAnalista); 

select nomeApp, min(Ganho) as 'Menor dos Ganhos', max(Ganho) as 'Maior dos Ganhos' from AnalistaApp, App
where fkApp = idApp group by(idApp); 

select nomeAnalista as 'Nome Analista', min(Ganho) as 'Média dos Ganho', max(Ganho) as 'Soma dos Ganhos' from AnalistaApp, Analista
where fkAnalista = idAnalista group by(idAnalista); 