create schema Locadora;
use Locadora;
create table midia (
idMidia int primary key not null auto_increment, 
tipo varchar(45) not null,
secao varchar(45) not null, 
locall varchar(45) not null, 
Statu_idStatus int not null ,
foreign key (Statu_idStatus) references statu(idStatus),
Filme_idFilme int not null,
foreign key (Filme_idFilme) references Filme(idfilme)
);

create table filme (
idFilme int primary key not null auto_increment, 
tituloOriginal varchar(80) not null, 
tituloPt varchar (80),
preco decimal(3,2) not null, 
duracao time not null, 
ano year(4), 
faixaEtaria varchar(5));

create table FilmeGenero(
Filme_idFilme int not null,
Genero_idGenero int not null,
primary key (Filme_idFilme, Genero_idGenero),
foreign key (Filme_idFilme) references filme(idFilme) on update cascade on delete cascade, 
foreign key (Genero_idGenero) references genero(idGenero) on update cascade on delete cascade
);
create table genero (idGenero int primary key not null auto_increment, nome varchar(45) not null);

create table statu (idStatus Int primary key not null auto_increment , nome varchar(45) not null);