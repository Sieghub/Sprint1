create database VALERIN;
use VALERIN;
create table empresa ( idempresa int auto_increment primary key,
nome varchar(90),
servico varchar(40),
localidade varchar(50));

insert into empresa (nome,servico, localidade)
value ( 'VALERIN', '', 'Suiça'),
('PIETRA', 'produtor de tomate','Alemanha'),
('Matinella', 'fazenda', 'Brasil');

select * from empresa;

create table tomate (idtomates int primary key auto_increment,
nome varchar(20),
origem varchar(30));

insert into sementes (nome, origem)
value ('tomate-cereja', 'Brasil'),
('italiano', 'Itália'),
('Holandes','Holanda'),
('carmem', 'México');

select * from sementes;

create table registro (idregistro int primary key auto_increment,
temperatura varchar(10),
hora datetime,
data_da_temperatura date);

create table sensor (idsensor int primary key auto_increment,
custo varchar(40),
preco varchar(60),
quantidade varchar(70),
semicondutor varchar(50),
tempo_de_producao time);