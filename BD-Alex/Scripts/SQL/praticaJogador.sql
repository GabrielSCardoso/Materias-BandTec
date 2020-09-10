create database praticaJogador;
use praticaJogador;

create table Times (
idTimes int primary key auto_increment,
nomeTime varchar (100),
nomeTecnico varchar (50),
dtFormacao date
) auto_increment = 1;

create table Jogador (
idJogador int primary key,
nomeJogador varchar (50),
posicaoJogador varchar (50),
salario varchar (50),
/*salario decimal(10, 2),
check (salario > 0),*/
fkTimes int,
foreign key (fkTimes) references Times(idTimes),
fkJogador int,
foreign key (fkJogador) references Jogador(idJogador)
);

create table seguidores (
fkJogador int,
foreign key (fkJogador) references Jogador(idJogador),
idSeguidor int, 
primary key (idSeguidor, fkJogador),
nomeSeguidor varchar (50),
nickName varchar (50),
sexo enum ('F', 'M', 'N')
);

insert into Times (nomeTime, nomeTecnico, dtFormacao) values 
('Real Madrid FC', 'Zinédine Yazid Zidane', '1902/03/06'),
('Barcelona FC', 'Enrique Setién', '1889/11/29'),
('Borussia Dortmund FC', 'Lucien Favre', '1909/12/19'),
('Atlético de Madrid FC', 'Diego Pablo Simeone', '1903/04/26'),
('Valencia FC', 'Albert Celades i López', '1919/03/18'),
('Juventus FC', 'Maurizio Sarri', '1897/11/01'),
('Paris Saint-Germain FC', 'Thomas Tuchel', '1970/08/12'),
('Light beam', 'Leonardo Yary', '2009/02/15');

insert into Jogador values 
('1', 'Gareth Bale', 'Atcante', '15000000', '1', null),
('2', 'Marcelo Vieira Jr', 'Zagueiro', '17000000', '1', '1'),
('3', 'Karim Benzema', 'Atcante', '7920000', '1', '2'),
('4', 'Lionel Messi', 'Atcante', '26000000', '2', null),
('5', 'Marc-André ter Stegen', 'Goleiro', '4680000', '2', '4'),
('6', 'Luis Alberto Suárez', 'Atcante', '15800000', '2', '5'),
('7', 'Achraf Hakimi', 'Zaguiero', '1500000', '3', null),
('8', 'Roman Bürki', 'Goleiro', '3500000', '3', '7'),
('9', 'Emre Can', 'Meio-Campo', '3200000', '3', '8'),
('10', 'Marcos Llorente', 'Meio-Campo', '2900000', '4', null),
('11', 'Jan Oblak', 'Goleiro', '9000000', '4', '10'),
('12', 'Yannick Ferreira Carrasco', 'Meio-Campo', '3200000', '4', '11'),
('13', 'Denis Cheryshev', 'Meio-Campo', '3500000', '5', null),
('14', 'Ferrán Torres', 'Meio-Campo', '5000000', '5', '13'),
('15', 'Alessandro Florenzi', 'Zagueiro', '3000000', '5', '15'),
('16', 'Cristiano Ronaldo', 'Atacante', '31000000', '6', null),
('17', 'Paulo Dybala', 'Atacante', '13520000', '6', '16'),
('18', 'Gianluigi Buffon', 'Goleiro', '4000000', '6', '17'),
('19', 'Neymar Jr', 'Atacante', '36800000', '7', null),
('20', 'Thiago Silva', 'Zagueiro', '12000000', '7', '19'),
('21', 'Kylian Mbappé', 'Atacante', '17500000', '7', '20'),
('22', 'David San Tiago', 'Goleiro', '1000000', '8', null),
('23', 'Marcus Libra', 'Atacante', '2500000', '8', '22'),
('24', 'Jason Senna', 'Meio-Campo', '1300000', '8', '23');

insert into Seguidores values 
('1', '100', 'Phipille Delciro', 'PlPDelciro', 'M'),
('2', '101', 'Marcus Souza', 'McS2020', 'M'),
('3', '102', 'Emile Castro', 'Castro.EL', 'F'),
('4', '103', 'Ana Leão', 'Leão_Lider', 'N'),
('5', '104', 'Gabrielli Cardoso', 'Gabi.Move', 'F'),
('6', '105', 'Pedro Couto', 'CoutoPedro7', 'M'),
('7', '106', 'Juliana Castanbid', 'JuJuCast', 'F'),
('8', '107', 'Mark Sloan', 'Sloan789', 'N'),
('9', '108', 'Erick Jr', 'JRDestruidor', 'M'),
('10', '109', 'Daniel Simões', 'SiMõEsDaNiEl', 'M'),
('11', '110', 'Gabriel Correia', 'C0RR314', 'M'),
('12', '111', 'Emanuelle Silva', 'ManuGatinha', 'F'),
('13', '112', 'Bianca Aurelio', 'Aurelio_Angel', 'F'),
('14', '113', 'Inayah Andrade', 'NhaNha_Andrade', 'N'),
('15', '114', 'Vanessa Silva', 'VanaPrincess', 'F'),
('16', '115', 'Nayara Moralhes', 'NayMOR', 'F'),
('17', '116', 'Helton Rodrigues', 'CoringaDuMal', 'M'),
('18', '117', 'Juan Axel', 'AxelDiamond', 'M'),
('19', '118', 'Douglas Avelino', 'DogLino', 'N'),
('20', '119', 'Mario Marcus', 'Marcu360Mah', 'M'),
('21', '120', 'João Neto II', 'NetoII', 'M'),
('22', '121', 'Victor Caccio', 'C4cc10Vih', 'N'),
('23', '122', 'Julia Oliveira', 'OliveiraJUH', 'F'),
('24', '123', 'Maria Carla', 'CarlinhaMaH', 'F');

select * from Jogador; 
select * from Times;
select * from Seguidores;


select nomeTecnico, nomeTime from Times where nomeTime like 'B%';

select posicaoJogador, nomeJogador, salario, idJogador, fkTimes, fkJogador from Jogador order by posicaoJogador desc;

select posicaoJogador, nomeJogador from Jogador where posicaoJogador like 'Atacante';

select * from Times where nomeTecnico like '%e_';

select nomeTecnico, nomeTime from Times order by nometecnico asc;

select * from Times order by dtFormacao desc;

update Jogador set posicaoJogador = 'Goleiro' where idJogador = '22';

Select * from Times as t, Jogador as j where t.idTimes = j.fkTimes;

select * from Times as t, Jogador as j where t.idTimes = j.fkTimes and t.nomeTime = 'Paris Saint-Germain FC';

select * from Jogador as j, Jogador as r where j.idJogador = r.fkJogador;

select * from jogador as c, Jogador as j, Times as t where c.fkJogador = j.idJogador;

select * from Jogador as c, jogador as j, Times as t where c.fkJogador = j.idJogador and t.idTimes = j.fkTimes and c.nomeJogador like 'Paulo Dybala';

Select * from Jogador as s, seguidores as j where s.idJogador = j.fkJogador;

select * from  Seguidores as s, Jogador as j where j.idJogador = s.fkJogador and j.nomeJogador = 'Lionel Messi';

delete from Jogador where idJogador = 15; 

/* Soma - sum */
select sum(salario) from Jogador;

/* Media - avg */
select avg(salario) from Jogador;

/* Soma e Media */


/* Max e Min juntos*/
select min(salario) as menor_salario, max(salario) as maior_salario from jogador; 
/* Max separado */
select max(salario) as maior_salario from jogador; 

/* Count */
select count(salario) as pgto_efetuados from Jogador;

select count(salario) as pgto_efetuados from Jogador where salario < 8000000;






