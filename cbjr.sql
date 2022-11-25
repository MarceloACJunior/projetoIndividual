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
	idPontuacao INT,
    fkUsuario INT, CONSTRAINT fkIdUsuario 
		FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
			PRIMARY KEY (idPontuacao, fkUsuario),
	pontuacao INT,
    perPont FLOAT
);

select * from usuario;