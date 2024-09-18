create database prova;
use prova;

create table carro(
Id integer auto_increment primary key, marca varchar(50), placa varchar(12)

);

insert into carro(marca,placa)
values ("fiat", "brasil12");
select * from carro;

insert into carro(marca,placa)
values ("wolksvagem", "bril52152");

insert into carro(marca,placa)
values ("uno", "portugal23");

insert into carro(marca,placa)
values ("camaro", "brasil414");

delete from carro WHERE id=2;
delete from carro WHERE id=3;

UPDATE carro
SET marca = "fusca"
WHERE id= 4;

##Pessoa

create table pessoa(
id integer auto_increment primary key, nome varchar(50),
FK_carroid int, foreign key (FK_carroid ) references carro(id)

);

insert into pessoa(nome,FK_carroid)
values ("erick", 4);
select * from pessoa;

insert into pessoa(nome,FK_carroid)
values ("paulo", 1);

insert into pessoa(nome,FK_carroid)
values ("ana", 5);

insert into pessoa(nome,FK_carroid)
values ("pedro", 6);

delete from pessoa WHERE id=4;

UPDATE pessoa
SET nome = "fusca"
WHERE id= 2;

