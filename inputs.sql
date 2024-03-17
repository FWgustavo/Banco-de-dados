insert into Marca(nome) values ("Toyota"),
("Chevrolet"),
("Volkswagen"),
("Fiat"),
("Honda"),
("Hyundai");
select * from Marca;

insert into Cor(nome) values ("Preto");
insert into Cor(nome) values ("Branco");
insert into Cor(nome) values ("Prata");
 
 select * from Cor;
 
 insert into Agente(nome, matricula, contratacao) values 
 ("Marcelo", 00897, "8860"),
 ("Anderson", 01022, "8860"),
 ("Julio", 02797, "7469");
 
 select * from Agente;
 
 insert into Infracao(descricao,valor,pontos) values
 ("Estacionar na contramao de direcao",85.13,4),
 ("Dirigir sem usar lentes corretoras de visao",191.54,7),
 ("Estacionar em faixa destinada a pedestre ",127.69,5);
 
 select * from Infracao;
 
 insert into Sexo(descricao) values
 ("Feminino"),
 ("Masculino");
 
 select * from Sexo;
 
 insert into Estado(sigla,nome) values
 ("MG","Minas Gerais"),
 ("SP", "Sao Paulo"),
 ("RJ", "Rio de Janeiro");
 
 select * from Estado;
 
 insert into Cidade(nome,id_estado)values
 ("Belo Horizonte",1),
 ("Bauru",2),
 ("Niteroi",3);
 
 select * from Cidade;
 
 insert into Endereco(logradouro,numero,bairro,cep,complemento)values
 (340,1140,"Vila Antena",30451535,"Apartamento"),
 (567,1140,"Centro",17015070,"Apartamento"),
 (789,1140,"Centro",24020290,"Casa");
 
 select * from Endereco;
 
 insert into Proprietario(nome,cpf,cadastro,id_cidade,id_sexo,id_endereco)values
 ("Andrea",08776492201,786954,1,1,1),
 ("Fernanda",23487600192,776549,3,2,3),
 ("Pedro",75211398440,345920,2,3,2);
 
 select * from Proprietario;
 
 

