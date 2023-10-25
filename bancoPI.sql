create database sitejogos;
use sitejogos;
CREATE TABLE CAR (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    DESCRICAO TEXT,
    IMGURL VARCHAR(255)
);

CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nick VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

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



