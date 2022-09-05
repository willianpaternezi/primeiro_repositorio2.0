create database individual;
use individual;

create table Cliente (
id_cliente int primary key auto_increment,
razao_social varchar (100),
nome_fantasia varchar (45),
cnpj varchar (20),
cep varchar(15), 
endereco varchar (80),
numero int,
bairro varchar(45),
cidade varchar(45),
estado varchar(45),
responsavel varchar (45),
telefone varchar (11),
email varchar (80)
);

create table sensor (
id_sensor int primary key auto_increment,
localizacao varchar (20),
check (localizacao = 'freezer' or localizacao = 'transporte')
);

create table registro (
id_registro int primary key auto_increment,
temperatura float,
data_hora datetime default current_timestamp
);

select * from sensor;
select * from cliente; 
select * from registro;