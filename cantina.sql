create database if not exists cantina;
use cantina;
show databases;

/*Criação de Tabelas*/

create table if not exists Produtos(
id smallint auto_increment,
Produto varchar(40),
Unidade varchar(10),
Qtde double,
Valor double,
Categoria varchar(30),
Fornecedor varchar(50),
Contato varchar(40),
primary key(id)
);

select * from Produtos;