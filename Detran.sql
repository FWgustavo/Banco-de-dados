create database detran;
use detran;
create table Marca(
id int auto_increment,
nome varchar(50),
primary key(id)
);
create table Cor(
id int auto_increment,
nome varchar(30),
primary key(id)
);
create table Agente(
id int auto_increment,
nome varchar(50),
matricula int,
contratacao varchar(50),
primary key(id)
);
create table Infracao(
id int auto_increment,
descricao varchar(150),
valor double,
pontos int,
primary key(id)
);
create table Sexo(
id int auto_increment,
descricao varchar(20),
primary key(id)
);
create table Estado(
id int auto_increment,
sigla char(2),
nome varchar(50),
primary key(id)
);
create table Cidade(
id int auto_increment,
id_estado int,
nome varchar(50),
primary key(id),
foreign key(id_estado)  references Estado (id)
);
create table Endereco(
id int auto_increment,
logradouro varchar(80),
numero varchar(10),
bairro varchar(50),
cep char(8),
complemento varchar(80),
primary key(id)
);
create table Proprietario(
id int auto_increment,
id_cidade int,
id_sexo int,
id_endereco int,
nome varchar(50),
cpf char(11),
cadastro varchar(50),
primary key(id),
foreign key(id_cidade) references Cidade(id),
foreign key(id_sexo) references Sexo(id),
foreign key(id_endereco) references Endereco(id)
);
create table Modelo(
id int auto_increment,
id_marca int,
nome varchar(50),
primary key(id),
foreign key(id_marca) references Marca(id)
);
create table Veiculo(
id int auto_increment,
id_cor int,
id_proprietario int,
id_modelo int,
placa char(7),
cadastro varchar(50),
primary key(id),
foreign key(id_cor) references Cor(id),
foreign key(id_proprietario) references Proprietario(id),
foreign key(id_modelo) references Modelo(id)
);
create table Multa(
id int auto_increment,
lancamento varchar(50),
data date,
hora time,
local varchar(150),
primary key(id),
id_veiculo int,
id_agente int,
id_cidade int,
id_infracao int,
foreign key(id_veiculo) references Veiculo(id),
foreign key(id_agente) references Agente(id),
foreign key(id_cidade) references Cidade(id),
foreign key(id_infracao) references Infracao(id)
);


