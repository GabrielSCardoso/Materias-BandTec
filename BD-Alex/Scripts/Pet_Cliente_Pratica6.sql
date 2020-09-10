
use PetShop;

create table Pet (
idPet int primary key auto_increment,
tipoAnimal varchar (50),
nomeAnimal varchar (50),
racaAnimal varchar (50),
dtNascimento date 
) auto_increment = 101;

create table Cliente (
idCliente int primary key auto_increment,
nomeCliente varchar (50),
enderecoCliente varchar (100),
telefoneFixo varchar (8),
telefoneCelular varchar (11)
) auto_increment = 1;

insert into pet (tipoAnimal, nomeAnimal, racaAnimal, dtNascimento) values 
('Cachorro','Thor','Pastor Alemão','2019/06/26'),
('Cachorro','Rosa','Golden','2018/03/02'),
('Gato','Flopy','Persa','2015/05/16'),
('Papagaio','Bela','Papagaio-Verdadeiro','2020/01/03'),
('Gato','Tiger','Gato-de-Bengala','2018/12/02'),
('Arara','Spark','Arara-Vermelha','2017/09/18');


insert into cliente (nomeCliente, enderecoCliente, telefoneFixo, telefoneCelular) values
('Gabriel Cardoso','Rua Francisca Biriba','41006980','11965874125'), 
('Letícia Cardoso','Rua Jacofer','41526985','11965874136'), 
('Paulo Albergue','Rua 25 de março','25698745','11912355688'), 
('Nayara Alves','Av. Imirim','36521456','11365897485'), 
('Giovanna Ferrari','Rua Ouro Branco','45612356','11987456235'); 

select * from cliente;
select * from pet;

alter table pet add column idCliente int;

alter table pet add foreign key(idCliente) references Cliente(idCliente);

update pet set idCliente = 1 where idPet in (101,102);

update pet set idCliente = 2 where idPet in (104);

update pet set idCliente = 3 where idPet in (103);

update pet set idCliente = 4 where idPet in (106);

update pet set idCliente = 5 where idPet in (105);

alter table cliente modify  nomeCliente varchar(100);

select * from pet where tipoAnimal = 'cachorro';

select nomeAnimal, dtNascimento from pet;

select * from pet order by nomeAnimal asc; 

select * from cliente order by enderecoCliente desc;

select * from pet where nomeAnimal like 'T%';

select * from cliente where nomeCliente like '%Cardoso%';

update cliente set telefoneFixo = '87956589' where idCliente = 1;

select * from cliente;

select * from pet;

select idPet, 
tipoAnimal,
 p.nomeAnimal,
 racaAnimal, dtNascimento, p.IdCliente, c.nomeCliente, enderecoCliente, telefoneFixo, telefoneCelular
from pet as p, cliente as c
where p.idCliente = c.idCliente; 

select idPet, 
tipoAnimal, 
p.nomeAnimal, 
racaAnimal, dtNascimento, p.IdCliente, c.nomeCliente, enderecoCliente, telefoneFixo, telefoneCelular
from pet as p, cliente as c
where p.idCliente = c.idCliente and c.nomeCliente = 'Gabriel Cardoso';

delete from pet where idPet = 106;

select * from pet;

drop table pet, cliente;









