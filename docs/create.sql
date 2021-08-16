CREATE TABLE Mensagem(
  id INT PRIMARY KEY,
  conteudo VARCHAR(50),
  id_objeto INT,
  id_osuario INT,
  cod_funcionario INT,
  cod_usuario INT,
  FOREIGN KEY (cod_funcionario) REFERENCES Funcionario,
  FOREIGN KEY (cod_usuario) REFERENCES Usuario
)

CREATE TABLE Funcionario(
  username VARCHAR(20),
  nome VARCHAR(50),
  email VARCHAR(30),
  id INT PRIMARY KEY,
  cod_deposito INT,
  FOREIGN KEY(cod_deposito) REFERENCES Deposito
)

CREATE TABLE Deposito(
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  quantidade INT
)

CREATE TABLE Usuario(
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  email VARCHAR(30),
  cod_telefone INT NOT NULL,
  FOREIGN KEY (cod_telefone) REFERENCES(telefone),
  tipo VARCHAR(15)
)

CREATE TABLE telefone(
  id INT PRIMARY KEY,
  numero VARCHAR(15)
)

CREATE TABLE Objeto(
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  id_usuario INT,
  data_hora_entrada DATETIME,
  descricao VARCHAR(50),
  situacao VARCHAR(30)
  status VARCHAR(15)
  FOREIGN KEY(cod_telefone) REFERENCES(categoria)
)

CREATE TABLE Categoria(
  id INT PRIMARY KEY,
  nome VARCHAR(50)
)

CREATE TABLE Deposito_Objeto(
  FOREIGN KEY(cod_deposito) REFERENCES(Deposito),
  FOREIGN KEY(cod_objeto) REFERENCES(Objeto)
)

CREATE TABLE Objeto_Usuario(
  FOREIGN KEY(cod_objeto) REFERENCES(Objeto),
  FOREIGN KEY(cod_usuario) REFERENCES(Usuario)
)

CREATE TABLE Retirada_do_Objeto(
  id INT PRIMARY KEY,
  FOREIGN KEY(cod_objeto) REFERENCES(Objeto),
  id_achado_por INT,
  id_retirado_por INT,
  data_hora_resgate DATETIME
)

CREATE TABLE Objeto_Retirada(
  FOREIGN KEY(cod_objeto) REFERENCES(Objeto),
  FOREIGN KEY(cod_retirada) REFERENCES(Retirada_do_Objeto)
)
