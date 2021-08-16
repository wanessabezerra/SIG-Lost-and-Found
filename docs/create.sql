CREATE TABLE Mensagem(
  id INT PRIMARY KEY,
  conteudo VARCHAR(50)  NOT NULL,
  id_objeto INT NOT NULL,
  id_osuario INT NOT NULL,
  cod_funcionario INT NOT NULL,
  cod_usuario INT NOT NULL,
  FOREIGN KEY (cod_funcionario) REFERENCES Funcionario,
  FOREIGN KEY (cod_usuario) REFERENCES Usuario
)

CREATE TABLE Funcionario(
  username VARCHAR(20) NOT NULL,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(30) NOT NULL,
  id INT PRIMARY KEY,
  cod_deposito INT NOT NULL,
  FOREIGN KEY(cod_deposito) REFERENCES Deposito
)

CREATE TABLE Deposito(
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  quantidade INT NOT NULL
)

CREATE TABLE Usuario(
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(30) NOT NULL,
  cod_telefone INT NOT NULL,
  FOREIGN KEY (cod_telefone) REFERENCES(telefone),
  tipo VARCHAR(15)
)

CREATE TABLE telefone(
  id INT PRIMARY KEY,
  numero VARCHAR(15) NOT NULL
)

CREATE TABLE Objeto(
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  id_usuario INT NOT NULL,
  data_hora_entrada DATETIME NOT NULL,
  descricao VARCHAR(50) NOT NULL,
  situacao VARCHAR(30) NOT NULL,
  status VARCHAR(15) NOT NULL,
  FOREIGN KEY(cod_telefone) REFERENCES(categoria)
)

CREATE TABLE Categoria(
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL
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
  FOREIGN KEY(cod_objeto) REFERENCES(Objeto) NOT NULL,
  id_achado_por INT NOT NULL,
  id_retirado_por INT NOT NULL,
  data_hora_resgate DATETIME NOT NULL
)

CREATE TABLE Objeto_Retirada(
  FOREIGN KEY(cod_objeto) REFERENCES(Objeto),
  FOREIGN KEY(cod_retirada) REFERENCES(Retirada_do_Objeto)
)
