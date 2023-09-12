create database sitejogos;
use sitejogos;
create table games(
gameID int primary key auto_increment,
gameName varchar(150),
gameDescription text,
releaseData date);

create table usuario(
nome varchar(200),
authorID int primary key auto_increment,
email varchar(200),
dataNascimento date);

create table opinioes(
reviewID int primary key auto_increment,
gameID int,
authorName varchar(200),
authorID int,
reviewText text,
rating int,
reviewDate date,
foreign key (gameID) references games(gameID),
foreign key (authorID) references usuario(authorID));



