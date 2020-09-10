create database Prova_AC3_1;
use Prova_AC3_1;

create table Aplicativo (
idAplicativo int primary key auto_increment,
nomeApp varchar (50),
generoApp varchar (50)
) auto_increment = 10;

create table Desenvolvedor (
idDesenvolvedor int primary key auto_increment,
nomeDev varchar (50),
faturamentoMensal decimal(7,2),
check (faturamentoMensal > 0),
fkAplicativo int,
foreign key (fkAplicativo) references Aplicativo(idAplicativo)
) auto_increment = 1000;

create table Versao (
fkApp int,
foreign key (fkApp) references Aplicativo(idAplicativo),
idVersao int, 
primary key (idVersao, fkApp),
alteracaoApp varchar (100),
numVersao varchar (50),
dtLiberacao date
);

insert into Aplicativo (nomeApp, generoApp) values 
('ZL-List','App Nativo'),
('TRQueimadores','Web App'),
('TOTVS','App Híbrido'),
('G-Glass','App Híbrido'),
('StudioKTM','Web App'),
('ForceDragons','App Nativo'),
('ExploreFox','Web App'),
('LGO Index','App Híbrido'),
('Tech Working','Web App'),
('Be The Hero','Web App');

insert into Desenvolvedor (nomeDev, faturamentoMensal, fkAplicativo) values 
('Gabriel Cardoso','16900', 10),
('Gabriel Cardoso','15000', 19),
('TIVIT','20360','18'),
('TIVIT','17800','11'),
('Renan Augusto','13200','17'),
('Renan Augusto','20000','12'),
('Carlos Henrique','9590','13'),
('RocketSeat','16666','14'),
('Souzas-Tech','15500','15'),
('Emili Steve','18000','16');

insert into Versao (fkApp, idVersao, alteracaoApp, numVersao, dtLiberacao) values 
('10','1','Coloração BlackFriday','1.1.0','2001/06/26'),
('10','2','Cadastro de Usuário','1.5.2','2001/11/30'),
('11','3','Segurança de informação','2.5.0','2015/06/15'),
('11','4','Segurança de informação','.1.1.1','2012/02/12'),
('12','5','Atualização de software','2.3.2','2001/02/03'),
('13','6','Mudança de Linguagem','1.0.1','2017/02/20'),
('14','7','Modificação de Login','1.5.0','2016/05/19'),
('15','8','Configuração no Banco','1.2.0','2018/01/14'),
('16','9','Teste de Performace','1.0.2','2014/12/01'),
('17','10','Alteração de Pacotes','1.6.6','2005/03/03'),
('18','11','Teste de Usabilidade','3.0.0','2011/10/16'),
('18','12','Configuração de envio de infomações','3.3.3','2011/12/26'),
('19','13','Teste da Caixa-Preta','3.0.5','2019/05/15');

select * from Aplicativo;
select * from Desenvolvedor;
select * from Versao;

select * from Aplicativo as a, Desenvolvedor as d where a.idAplicativo = d.fkAplicativo; 

select * from Aplicativo as a, Desenvolvedor as d where a.idAplicativo = d.fkAplicativo and d.nomeDev like 'TIVIT';

select * from Aplicativo as a, Versao as d where a.idAplicativo = d.fkApp;

select * from Aplicativo as a, Versao as d where a.idAplicativo = d.fkApp and a.nomeApp = 'Tech Working';

select * from Aplicativo as a , Desenvolvedor as d, Versao as v where a.idAplicativo = d.fkAplicativo;

select sum(faturamentoMensal) as Soma_Salario, avg(faturamentoMensal) as Media_Salario from Desenvolvedor;

select max(faturamentoMensal) as Maior_Salario, min(faturamentoMensal) as Menor_Salario from Desenvolvedor;

select count(faturamentoMensal) as Pgto_Cadastrado from Desenvolvedor;

select count(faturamentoMensal) as Menor_Pgto from Desenvolvedor where faturamentoMensal < 10000;
