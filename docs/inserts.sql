INSERT INTO Telefone VALUES
    (1, '084876273514');
    
INSERT INTO Telefone VALUES
    (2, '084098495736');
    
INSERT INTO Telefone VALUES
     (3, '08440028922');

INSERT INTO Telefone VALUES
     (4, '08451139033');

INSERT INTO Telefone VALUES
    (5, '084876543210');
    
INSERT INTO Usuario VALUES
    (1, 'Seu Chico', 'seuchicao@iahu.com', 'Convencional', 1);

INSERT INTO Usuario VALUES
    (2, 'Paulin Bacana', 'paulin@bacana.com', 'Convencional', 2);

INSERT INTO Usuario VALUES
    (3, 'Dona Zazá', 'zazadograu@gemeil.com', 'Convencional', 3);

INSERT INTO Usuario VALUES
    (4, 'Jorgin', 'jorgindazn@rotmeil.com', 'Convencional', 4);

INSERT INTO Usuario VALUES
    (5, 'Seu Madruga', 'seumadruguinha@aluguel.com', 'Convencional', 5);
    
INSERT INTO Deposito VALUES
    (1, 'Carteira com documentos', 1);
    
INSERT INTO Deposito VALUES
    (2, 'Livro', 1);

INSERT INTO Deposito VALUES
    (3, 'Mochilas', 2);

INSERT INTO Deposito VALUES
    (4, 'Canetas', 3);

INSERT INTO Deposito VALUES
    (5, 'Agenda', 1);

INSERT INTO Funcionario VALUES
    ('ulisses', 'Ulisses da Silva', 'ulisses@iahu.com', 1, 1);

INSERT INTO Funcionario VALUES
    ('serginho', 'Sérgio Santos', 'serjao@berranteiro.com', 2, 2);
    
INSERT INTO Funcionario VALUES
    ('dani', 'Daniela Fernandes', 'danifer@gemeil.com', 3, 3);

INSERT INTO Funcionario VALUES
    ('moraes', 'Moraes Moreira', 'moramore@rotmeil.com', 4, 4);

INSERT INTO Funcionario VALUES
    ('anapaula', 'Ana Paula', 'ana@paula.com', 5, 5);

INSERT INTO Mensagem VALUES
    (1, 'Achei sua carteira', 1, 1, 1, 1);

INSERT INTO Mensagem VALUES
    (2, 'Achei seu livro', 2, 2, 2, 2);

INSERT INTO Mensagem VALUES
    (3, 'Achei uma mochila sua', 3, 3, 3, 3);
 
INSERT INTO Mensagem VALUES
    (4, 'Tem uma mochila aqui, acho que é sua', 4, 4, 4, 4);

INSERT INTO Mensagem VALUES
    (5, 'Achamos uma caneta sua aqui', 5, 5, 5, 5);

INSERT INTO Categoria VALUES
    (1, 'Documento');

INSERT INTO Categoria VALUES
    (2, 'Higiene');

INSERT INTO Categoria VALUES
    (3, 'Material estudantil');

INSERT INTO Categoria VALUES
    (4, 'Objetos pessoais');

INSERT INTO Categoria VALUES
    (5, 'Objetos regulares');

INSERT INTO Objeto VALUES
      (1, 'carteira', 1, '2021-08-17', 'uma carteira com alguns documentos',  'novo', 'perdido', 4);

INSERT INTO Objeto VALUES
      (2, 'livro', 2, '2021-08-16', 'livro de reri poter', 'novo', 'encontrado', 5);

INSERT INTO Objeto VALUES
      (3, 'mochila', 3, '2021-08-13', 'mochila azul', 'usado', 'perdido', 3);

INSERT INTO Objeto VALUES
      (4, 'mochila', 3, '2021-08-13', 'mochila amarela', 'usado', 'perdido', 3);

INSERT INTO Objeto VALUES
      (5, 'caneta', 4, '2021-08-12', 'caneta vermelha', 'usado', 'encontrado', 3);

INSERT INTO Deposito_Objeto VALUES
      (1, 1);

INSERT INTO Deposito_Objeto VALUES
      (2, 2);

INSERT INTO Deposito_Objeto VALUES
      (3, 3);

INSERT INTO Deposito_Objeto VALUES
      (3, 4);

INSERT INTO Deposito_Objeto VALUES
      (4, 5);

INSERT INTO Objeto_Usuario VALUES
      (1, 1);

INSERT INTO Objeto_Usuario VALUES
      (2, 2);
      
INSERT INTO Objeto_Usuario VALUES
      (3, 3);
      
INSERT INTO Objeto_Usuario VALUES
      (4, 3);
      
INSERT INTO Objeto_Usuario VALUES
      (5, 4);
      
INSERT INTO Retirada_do_Objeto VALUES
      (1, 2, 1, 1, '2021-08-17');

INSERT INTO Retirada_do_Objeto VALUES
      (2, 5, 2, 2, '2021-08-17');
      
INSERT INTO Objeto_Retirada VALUES
      (2, 1);
      
INSERT INTO Objeto_Retirada VALUES
      (5, 2);
