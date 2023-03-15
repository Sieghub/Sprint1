create database VALERIN;
use VALERIN;

create table cadastroPf (
idCadastropf int primary key auto_increment,
nome varchar(50),
sobrenome varchar(50),
email varchar(80),
cpf varchar(14),
senha varchar(30),
telefone varchar(13)
);

insert into cadastroPf (nome, sobrenome, email, cpf, senha, telefone) values
('Jose','Duarte','jose@gmail.com','548.961.111-17','1239','11-94533-1494'),
('Eduardo','Silva','eduardo@gmail.com','548.961.212-18','9874','11-96842-1256'),
('Thiago','Alves','thiago@gmail.com','548.961.233-29','1344','11-93491-2486'),
('Elly','Neves','elly@gmail.com','582.961.234-11','joao123','11-98914-5814'),
('Joao','Ferreira','joao@gmail.com','298.961.234-93','duarte123','11-97812-7856'),
('Duarte','Caramico','duarte@gmail.com','684.961.234-65','7531','11-91256-2378'),
('Levi','Biazon','levi@gmail.com','548.987.234-82','izaaa','11-98911-1265'),
('Iza','Santos','iza@gmail.com','541.261.234-74','15978','11-93657-1478'),
('Ana','Dantas','ana@gmail.com','548.961.154-76','1573','11-98945-7894'), 
('Torres','Vilar','torres@gmail.com','548.961.234-53','258147','11-12345-1234');

create table cadastroPj (
idCadastroPj int primary key auto_increment,
razaoSocial varchar(50),
emailPj varchar(100),
cnpj varchar(18),
senha varchar(30),
telefone varchar(13)
);

insert into cadastroPj (razaoSocial, emailPj, cnpj, senha, telefone) values 
('Jose mercados','jose@gmail.com','10.297.726/0003-00','jose135','11-94533-1598'),
('Maria varejo','maria@gmail.com','89.123.456/0001-00','mariaana','11-94223-1494'),
('Joao tomates','joaotomates@gmail.com','47.248.547/0002-00','joaopao','11-92333-1994'),
('Mercado do Thiago','thiago@gmail.com','87.147.159/0004-00','thiagoago','11-94898-1596'),
('Jose e Cia','joseeci@gmail.com','79.159.753/0008-00','josezin1239','11-97899-1324'),
('Ana Atacados','ana@gmail.com','20.374.678/0006-00','aninha','11-95967-1598'),
('Torres Mercadinho','torres@gmail.com','18.347.677/0005-00','torrestortas','11-94523-2795'),
('Loja Do Seu Zé','joseseuze@gmail.com','31.245.977/0003-00','zemercado','11-94533-2222'),
('Biazon Tomates','biazon@gmail.com','21.354.876/0009-00','biazon1901','11-96433-2599'),
('Joao Varejos','joaovarejos@gmail.com','78.456.123/0007-00','joao987','11-96842-1456');

create table fornecedores(
idfornecedores int primary key auto_increment,
empresa varchar (50),
produto varchar (40),
qtdProduto varchar(40)
);

insert into fornecedores (empresa, produto, qtdProduto) values 
('valerin','Tomate caqui','100'),
('joaquin conporation','Tomate carmem','1000'),
('car mercadinhos','Tomate Débora','2030'),
('joana mercadinhos','Tomate italiano','4040'),
('torres dos  transportes','Tomate cereja','5050'),
('ana esquina do mercado','Tomate sweet grapes','6060'),
('elly transports','Tomate coração de boi','7070'),
('pomodoro transpostes','Tomate Chucha','8080'),
('juju mercados','Tomate Rama','9090'),
('jose mercadores','Tomate pera','1010');

select * from fornecedores;
select * from cadastroPJ;

create table sensor(
idSensor int primary key auto_increment,
marcaSensor Varchar(50),
sensor varchar(50),
preço varchar(40),
qtdSensor varchar(40)
);

insert into sensor(marcaSensor, sensor, preço, qtdSensor) values
('LM35','temperatura','20','10'),
('LM35','temperatura','20','20'),
('LM35','temperatura','20','30'),
('LM35','temperatura','20','40'),
('LM35','temperatura','20','50'),
('LM35','temperatura','20','60'),
('LM35','temperatura','20','70'),
('LM35','temperatura','20','80'),
('LM35','temperatura','20','90'),
('LM35','temperatura','20','100');

select * from sensor;

create table registroSensor (
idregistroSensor int primary key auto_increment,
temperatura varchar(10),
hora time,
datTemperatura date,
statusSensor varchar(40)
);

insert into registroSensor (temperatura, hora, datTemperatura, statusSensor) values
('15°c','22:10','2023-02-02','ativo'),
('17°c','21:20','2023-01-01','desativado'),
('20°c','20:30','2023-08-08','ativo'),
('21°c','19:40','2023-09-08','desativado'),
('22°c','18:50','2023-06-07','ativo'),
('25°c','17:00','2023-07-06','desativado'),
('10°c','16:10','2023-05-04','ativo'),
('09°c','15:20','2023-04-05','desatiado'),
('05°c','14:30','2023-03-02','ativo'),
('13°c','13:40','2023-02-03','desativado');

select * from registroSensor;

select * from sensor;

update registroSensor set  temperatura = '14ºC' where idregistroSensor = 01;

select temperatura from registroSensor;

select marcaSensor from sensor; 

select temperatura from registroSensor; 

alter table sensor drop column qtdSensor;

alter table sensor add column qtdSensor varchar(30);

alter table registroSensor modify column statusSensor varchar(100);

alter table sensor rename column preço to valor ;

select  * from registroSensor order by hora;

select * from sensor order by valor desc;

describe sensor;

delete from sensor where idSensor = 01;

drop table registroSensor;

truncate table sensor;

drop table sensor;

drop Database VALERIN;

