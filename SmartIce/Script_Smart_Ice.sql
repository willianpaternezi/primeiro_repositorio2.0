create database SmartIce;
use SmartIce;

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
telefone varchar (13),
email varchar (80)
);

insert into Cliente (razao_social, nome_fantasia, cnpj, cep, endereco, numero, bairro, cidade, estado, responsavel, telefone, email) values 
('UNILEVER BRASIL LTDA', 'Kibon', '61.068.276/0001-04', '04543-011', 'Av. Presidente Juscelino Kubitschek', '1309', 'Itaim Bibi', 'São Paulo', 'SP',
'Renato Rodrigues','115897-8954', 'renato.rodrigues@kibon.com'),
('NESTLÉ BRASIL LTDA', 'Nestlé', '60.409.075/0001-52', '04730-090', 'Av. das Nações Unidas', '17007', 'Várzea de Baixo', 'São Paulo', 'SP',
'Natalia Sena', '115874-3216', 'natalia.senha@nestle.com'),
('OGGI SORVETES LTDA', 'Oggi Alimentos', '09.507.293/0001-72', '29111-175', 'Avenida Quinta', '30', 'COBILANDIA', 'VILA VELHA', 'ES', 
'Danielle Mauda', '115472-3986', 'daniele.mauda@oggi.com'),
('Euphoria Ice Cream Comercio de Alimentos LTDA', 'Ben & Jerry´s', '20.241.041/0001-87', '01426-003', 'Rua Oscar Freire', '957', 
'Cerqueira Cesar', 'São Paulo', 'SP', 'Luciana Panato', '115697-4321','luciana.panato@benejerrys.com');

create table sensor (
id_sensor int primary key auto_increment,
localizacao varchar (20),
check (localizacao = 'freezer' or localizacao = 'transporte')
);

insert into sensor (localizacao) values
('freezer'),
('transporte'),
('freezer'),
('transporte'),
('freezer'),
('transporte'),
('freezer'),
('transporte')
;

create table registro (
id_registro int primary key auto_increment,
temperatura float,
data_hora datetime default current_timestamp
);

insert into registro(temperatura, data_hora) value
('-19','2022-03-21-10:10:00 '),
('-18','2022-03-21-10:11:00 '),
('-20','2022-03-21-10:12:00 '),
('-18','2022-03-21-10:13:00 '),
('-21','2022-03-21-10:14:00 '),
('-18','2022-03-21-10:15:00 '),
('-20','2022-03-21-10:16:00 '),
('-22','2022-03-21-10:17:00 ');

select * from cliente;
select * from sensor;
select * from registro;