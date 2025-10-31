CREATE DATABASE escolas_museu
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE estado (
nomeEstado          VARCHAR(80) NOT NULL,
sigla               VARCHAR(3) NOT NULL,
regiao              VARCHAR(50),
PRIMARY KEY(sigla)
) DEFAULT CHARSET = utf8;


CREATE TABLE cidade (
nRegistro            INT(120)    NOT NULL,
nomeCidade           VARCHAR(90) NOT NULL,
descricao            VARCHAR(500),
siglaEstado          VARCHAR(3)  NOT NULL,
PRIMARY KEY(nRegistro),
FOREIGN KEY(siglaEstado) REFERENCES estado(sigla) 
) DEFAULT CHARSET = utf8;

DROP TABLE cidade;

CREATE TABLE aluno (
CID                 VARCHAR(40)  NOT NULL,
nomeAluno           VARCHAR(130) NOT NULL,
serieAluno          VARCHAR(20) NOT NULL,
monitorAluno        VARCHAR(130) NOT NULL,
descricaoCID        VARCHAR(150),
PRIMARY KEY

) DEFAULT CHARSET = utf8;