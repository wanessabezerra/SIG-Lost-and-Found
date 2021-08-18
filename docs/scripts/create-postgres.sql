drop table if exists Usuario cascade;
drop table if exists Deposito cascade;
drop table if exists Mensagem cascade;
drop table if exists Funcionario cascade;
drop table if exists Telefone cascade;
drop table if exists Categoria cascade;
drop table if exists Objeto cascade;
drop table if exists Deposito_Objeto cascade;
drop table if exists Objeto_Usuario cascade;
drop table if exists Retirada_do_Objeto cascade;
drop table if exists Objeto_Retirada cascade;

CREATE TABLE Telefone(
	id NUMERIC PRIMARY KEY,
	numero VARCHAR(15) NOT NULL
);

CREATE TABLE Usuario(
	id NUMERIC PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(30) NOT NULL,
	tipo VARCHAR(50) NOT NULL,
	cod_telefone INT NOT NULL,
	CONSTRAINT fk_telefone FOREIGN KEY (cod_telefone) 
	  	REFERENCES Telefone(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Deposito(
	id NUMERIC PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	quantidade NUMERIC NOT NULL
);

CREATE TABLE Funcionario(
	username VARCHAR(20) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	id NUMERIC PRIMARY KEY,
	cod_deposito NUMERIC NOT NULL,
	CONSTRAINT fk_deposito FOREIGN KEY(cod_deposito) 
		REFERENCES Deposito(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Mensagem(
	id NUMERIC PRIMARY KEY,
	conteudo VARCHAR(255)  NOT NULL,
	id_objeto NUMERIC NOT NULL,
	id_osuario NUMERIC NOT NULL,
	cod_funcionario NUMERIC NOT NULL,
	cod_usuario NUMERIC NOT NULL,
	CONSTRAINT fk_funcionario FOREIGN KEY (cod_funcionario) 
		REFERENCES Funcionario(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT fk_usuario FOREIGN KEY (cod_usuario) 
		REFERENCES Usuario(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Categoria(
	id NUMERIC PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE Objeto(
	id NUMERIC PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	id_usuario NUMERIC NOT NULL,
	data_hora_entrada TIMESTAMP NOT NULL,
	descricao VARCHAR(50) NOT NULL,
	situacao VARCHAR(30) NOT NULL,
	status VARCHAR(15) NOT NULL,
	cod_categoria NUMERIC NOT NULL,
	CONSTRAINT fk_categoria FOREIGN KEY(cod_categoria) 
		REFERENCES Categoria(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Deposito_Objeto(
	cod_deposito NUMERIC NOT NULL,
	cod_objeto NUMERIC NOT NULL,
	CONSTRAINT deposito_fk FOREIGN KEY(cod_deposito) 
		REFERENCES Deposito(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT objeto_fk FOREIGN KEY(cod_objeto) 
		REFERENCES Objeto(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Objeto_Usuario(
	cod_objeto NUMERIC NOT NULL,
	cod_usuario NUMERIC NOT NULL,
	CONSTRAINT fk_objeto2 FOREIGN KEY(cod_objeto) 
		REFERENCES Objeto(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT fk_usuario2 FOREIGN KEY(cod_usuario) 
		REFERENCES Usuario(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Retirada_do_Objeto(
	id NUMERIC PRIMARY KEY,
	cod_objeto NUMERIC NOT NULL,
	id_achado_por NUMERIC NOT NULL,
	id_retirado_por NUMERIC NOT NULL,
	data_hora_resgate TIMESTAMP NOT NULL,
	CONSTRAINT fk_retirada FOREIGN KEY(cod_objeto) 
		REFERENCES Objeto(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Objeto_Retirada(
	cod_objeto NUMERIC NOT NULL,
	cod_retirada NUMERIC NOT NULL,
	CONSTRAINT fk_objeto3 FOREIGN KEY(cod_objeto) 
		REFERENCES Objeto(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT fk_retirada3 FOREIGN KEY(cod_retirada) 
		REFERENCES Retirada_do_Objeto(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE
);
