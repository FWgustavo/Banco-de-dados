create database Cantina;
use Cantina;

create table Categoria(
id int auto_increment,
descricao varchar(50),
primary key(id)
);

create table Produto(
id int auto_increment,
data_validade date,
preco double,
sabor varchar(20),
quantidade int,
id_categoria int,
primary key(id),
foreign key(id_categoria) references Categoria(id)
);

create table Endereco(
id int auto_increment,
cidade varchar(50),
bairro varchar(50),
estado varchar(20),
cep char(8),
logradouro varchar(50),
primary key(id)
);

create table Fornecedor(
id int auto_increment,
nome varchar (50),
email varchar (50),
telefone char (11),
cnpj char (18),
id_endereco int,
primary key(id),
foreign key(id_endereco) references Endereco(id)
);

create table Produto_Fornecedor_Assoc(
id_produto int,
id_fornecedor int,
foreign key(id_produto) references Produto(id),
foreign key(id_fornecedor) references Fornecedor(id)
);

Create table Despesa(
id int auto_increment,
descricao varchar(50),
data_vencimento date,
valor double,
primary key(id)
);

Create table Pagamento(
id int auto_increment,
valor double,
data_pagamento date,
id_despesa int,
id_fornecedor int,
primary key(id),
foreign key(id_despesa) references Despesa(id),
foreign key(id_fornecedor) references Fornecedor(id)
);

create table Cargo (
id int auto_increment,
tipo varchar (20),
descrição varchar (30),
primary key (id)
);

create table Funcionario (
id int auto_increment,
nome varchar(50),
telefone char(11),
endereco varchar(50),
genero varchar(20),
id_cargo int,
id_endereco int,
primary key(id),
foreign key(id_cargo) references Cargo(id),
foreign key(id_endereco) references Endereco(id)
);

create table Cliente(
id int auto_increment,
nome varchar(50),
rg char(9),
genero varchar(20),
data_nascimento date,
cpf char(11),
id_funcionario int,
id_endereco int,
primary key(id),
foreign key (id_funcionario) references Funcionario(id),
foreign key (id_endereco) references Endereco(id) 
);

create table Venda(
id int auto_increment,
data_venda date,
id_cliente int,
id_funcionario int,
primary key(id),
foreign key(id_cliente) references Cliente(id),
foreign key(id_funcionario) references Funcionario(id)
);

create table Recebimento(
id int auto_increment,
data_recebimento date,
forma_pagamento varchar(20),
valor double,
id_venda int,
primary key(id),
foreign key(id_venda) references Venda(id)
);