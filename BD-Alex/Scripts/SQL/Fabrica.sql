create database Fabrica;
use Fabrica;

create table Fabrica (
idFabrica int primary key auto_increment,
nomeFabrica varchar (100),
Rua varchar (50),
CEP varchar (8),
dtFundacao date
) auto_increment = 300;

create table Costureiro (
idCostureiro int primary key auto_increment,
nomeCostureiro varchar (100),
telefoneFixo varchar (8),
Celular varchar (11),
email varchar (100),
fkFabrica int,
foreign key (fkFabrica) references Fabrica(idFabrica),
fkOrientador int,
foreign key (fkOrientador) references Costureiro(idCostureiro)
) auto_increment = 15;

insert into Fabrica (nomeFabrica, Rua, CEP, dtFundacao) values
('Hering ltda.','Tenente Velar','02451040','1965/02/13'),
('Riachuelo ltda.','Avenida Parada Pinto','01405263','1985/05/16'),
('Nike S/A','Time square ','51849562','1888/01/25'),
('Adidas S/A','Avenida Jamaris','04078000','1878/06/18'),
('Rebook S/A','Avenida Paulista','20514878','1905/07/14'),
('Besni ltda.','Avenida Imirim','02155487','1905/02/28');

insert into Costureiro (nomeCostureiro, telefoneFixo, Celular, email, fkFabrica, fkOrientador) values 
('Cleiton Silva','41007530','11962754755','CleitonSilva@Hering.com.br','300',null),
('Christian Cordeiro','84789562','11987456153','ChristianCordeiro@Hering.com.br','300','15'),
('Amanda Paloma','20014586','11987456453','AmandaPaloma@Hering.com.br','300','16'),
('Alex Bezerra','01254789','11987456032','AlexBezerra@Riachuelo.com.br','301',null),
('Vivian Costa','36520418','11987456167','VivianCosta@Riachuelo.com.br','301','18'),
('Thiago Correia','14587956','11987456222','ThiagoCorreia@Riachuelo.com.br','301','19'),
('Juan Antonio','15897458','11987456364','JuanAntonio@Nike.com.br','302',null),
('Eliana Pedreira','36598745','11987456888','ElianaPedreira@Nike.com.br','302','21'),
('Leticia Castro','01254789','11987456848','LeticiaCastro@Nike.com.br','302','22'),
('Emanuele Castro','01254639','11987456168','EmanueleCastro@Adidas.com.br','303',null),
('Jonatan Alves','36594702','11987456000','JonatanAlves@Adidas.com.br','303','24'),
('Rogerio Coutinho','25896314','11987456320','RogerioCoutinho@Adidas.com.br','303','25'),
('Helton Silva','97613498','11987456748','HeltonSilva@Rebook.com.br','304',null),
('Edson Cardoso','21458796','11987456369','EdsonCardoso@Rebook.com.br','304','27'),
('Stephani Mion','03616687','11987456748','StephaniMion@Rebook.com.br','304','28'),
('Elias Soares','22558964','11987456159','EliasSoares@Besni.com.br','305',null),
('Maicon Couto','33647895','11987456321','MaiconCouto@Besni.com.br','305','30'),
('Jessica Correio','25000147','11987456987','JessicaCorreio@Besni.com.br','305','31');

select * from Fabrica;
select * from Costureiro;

Select * from Fabrica as f, Costureiro as c where f.idFabrica = c.fkFabrica;

select * from Fabrica as f, Costureiro as c where f.idFabrica = c.fkFabrica and f.nomeFabrica = 'Riachuelo ltda.';

select * from Costureiro as c, Costureiro as t where c.fkOrientador = t.idCostureiro;

select * from Costureiro as c, Costureiro as j, Fabrica as t where c.fkOrientador = j.idCostureiro and t.idFabrica = j.fkFabrica and c.nomeCostureiro like 'Maicon Couto';
