create database ArtistasMusicais;

use Artistasmusicais;

create table Cantores (
idCantores int primary key auto_increment,
Cantor varchar(50),
CidadeNasc varchar(50),
EstiloMusical varchar (50),
TempoCarreira varchar (3)
) auto_increment = 1;

select * from Cantores;

insert into cantores (Cantor,CidadeNasc,EstiloMusical,TempoCarreira) values
('Mc Livinho','São Paulo','Funk','10'),
('MC Juan','Bahia','Funk','7'), 
('Mauro Henrique','São Paulo','Gospel','10'), 
('Priscilla Alcântara','São Paulo','Gospel','10'), 
('Ferrugem','Santa Catarina','Pagode','12'), 
('Gustavo Mioto','Rio de Janeiro','Sertanejo','12'), 
('Matheus e Kauan','Distrito Federal','Sertanejo','8');

select * from Cantores;

create table Gravadora (
idGravadora int primary key auto_increment,
Gravadora varchar (50),
Sede varchar(50),
DataNasc date,
NumSucesso varchar(50)
)auto_increment = 1;

insert into Gravadora (Gravadora, sede, DataNasc, NumSucesso) values
('Detona Funk','Alphaville','2000/10/12','43'),
('KondZilla','São Paulo','1998/02/01','96'),
('Dream Records','Santa Catarina','1987/12/02','123'),
('Eagle Rock Entertainment','EUA','1789/05/15','300'),
('Midas Studio','São Paulo','1889/09/09','350'),
('k9 Studio','Rio de Janeiro','2000/01/28','324'),
('Mosh Studios','Rio de Janeiro','1990/06/06','361');  

select * from Gravadora;