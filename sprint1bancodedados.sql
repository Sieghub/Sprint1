create database VALERIN_TRANSPORTES;
use VALERIN_TRANSPORTES;
create table empresa ( idempresa int auto_increment primary key,
nome varchar(90),
sobrenome varchar(60),
email varchar(45),
cpf varchar(50),
cnpj varchar(50),
telefone varchar(30));


insert into empresa (nome,servico, localidade)
value ( 'VALERIN', '', 'Suiça'),
('PIETRA', 'produtor de tomate','Alemanha'),
('Matinella', 'fazenda', 'Brasil');

select * from empresa;

create table tomate (idtomates int primary key auto_increment,
nome varchar(20),
origem varchar(30));


select * from sementes;

create table registro (idregistro int primary key auto_increment,
temperatura varchar(10),
hora time,
data_da_temperatura date);

create table sensor (idsensor int primary key auto_increment,
paises varchar(60),
custo varchar(40),
preco varchar(60),
quantidade varchar(70),
semicondutor varchar(50),
tempo_de_producao varchar(20));

select * from  sementes;

insert into sensor (paises,custo,preco,quantidade,semicondutor,tempo_de_producao) values
('Brasil','R$500','R$1000','50000','LM35','1 mês'),
('Estados Unidos','R$4000','R$6000','100000','LM35','20 dias');


insert into registro (temperatura, hora, data_da_temperatura ) values
('15ºC','00:00:01','2000-06-10'),
('15ºC','00:00:01','2023-02-28');

select * from registro;

drop table registro;

drop table sensor;


select * from sensor;

update registro set  temperatura = '12ºC' where idregistro = 01;

select temperatura from registro;

select  paises  from sensor; 

truncate table sensor;

alter table sensor drop column semicondutor;

alter table sensor add column semicondutor varchar(30);

alter table sensor modify column paises varchar(100);

alter table sensor rename column semicondutor to modelo;

select  * from sensor order by paises;

select * from sensor order by paises desc;

describe sensor;

delete from sensor where idsensor = 01;

drop Database VALERIN_TRANSPORTES;
