DROP DATABASE cbjr;
CREATE DATABASE cbjr;
USE cbjr;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomeUsuario VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    senha VARCHAR(45) NOT NULL
);

CREATE TABLE pontuacao (
	idPontuacao INT PRIMARY KEY AUTO_INCREMENT,
    fkUsuario INT, FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
	pontuacao INT,
    perPont FLOAT
);

select * from usuario;
select * from pontuacao;

SELECT nomeUsuario, pontuacao, perPont FROM PONTUACAO JOIN usuario ON fkUsuario = idUsuario ORDER BY perPont;