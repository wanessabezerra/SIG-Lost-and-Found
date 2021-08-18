INSERT INTO Telefone(id, numero)
    VALUES
        (1, '084876273514'),
        (2, '084098495736'),
        (3, '084400289223'),
        (4, '084511390333'),
        (5, '084876543210')
 ;
 
INSERT INTO Usuario(id, nome, email, cod_telefone) 
    VALUES
        (1, 'Seu Chico', 'seuchicao@iahu.com', 1),
        (2, 'Paulin Bacana', 'paulin@bacana.com', 2),
        (3, 'Dona Zazá', 'zazadograu@gemeil.com', 3),
        (4, 'Jorgin', 'jorgindazn@rotmeil.com', 4),
        (5, 'Seu Madruga', 'seumadruguinha@aluguel.com', 5)
;
    
INSERT INTO Deposito(id, nome, quantidade) 
    VALUES
        (1, 'Biblioteca', 30),
        (2, 'Cantina', 20),
        (3, 'Geral', 50),
        (4, 'Salas', 20),
        (5, 'Auditorio', 20)
;

INSERT INTO Funcionario(id, nome, username, email, cod_deposito) 
    VALUES
        (1, 'Ulisses da Silva', 'ulisses', 'ulisses@iahu.com', 1),
        (2, 'Sérgio Santos', 'serginho', 'serjao@berranteiro.com', 2),
        (3, 'Daniela Fernandes', 'dani', 'danifer@gemeil.com', 3),
        (4, 'Moraes Moreira', 'moraes', 'moramore@rotmeil.com', 4),
        (5, 'Ana Paula', 'anapaula', 'ana@paula.com', 5)
;

INSERT INTO Mensagem(id, conteudo, id_objeto, id_usuario, cod_funcionario, cod_usuario)
    VALUES
        (1, 'Achei sua carteira', 1, 1, 1, 1),
        (2, 'Achei seu livro', 2, 2, 2, 2),
        (3, 'Achei uma mochila sua', 3, 3, 3, 3),
        (4, 'Tem uma mochila aqui, acho que é sua', 4, 4, 4, 4),
        (5, 'Achamos uma caneta sua aqui', 5, 5, 5, 5)
;

INSERT INTO Categoria(id, nome)
    VALUES
        (1, 'Documento'),
        (2, 'Higiene'),
        (3, 'Material estudantil'),
        (4, 'Objetos pessoais'),
        (5, 'Objetos regulares')
;

INSERT INTO Objeto(id, nome, id_usuario, data_hora_entrada, descricao, situacao, status, cod_categoria)
    VALUES
        (1, 'carteira', 1, '2021-08-17', 'uma carteira com alguns documentos',  'novo', 'perdido', 4),
        (2, 'livro', 2, '2021-08-16', 'livro de reri poter', 'novo', 'encontrado', 5),
        (3, 'mochila', 3, '2021-08-13', 'mochila azul', 'usado', 'perdido', 3),
        (4, 'mochila', 3, '2021-08-13', 'mochila amarela', 'usado', 'perdido', 3),
        (5, 'caneta', 4, '2021-08-12', 'caneta vermelha', 'usado', 'encontrado', 3)
;

INSERT INTO Deposito_Objeto(cod_deposito, cod_objeto)
    VALUES
        (1, 1),
        (2, 2),
        (3, 3),
        (3, 4),
        (4, 5)
;

INSERT INTO Objeto_Usuario(cod_objeto, cod_usuario) 
    VALUES
        (1, 1),
        (2, 2),
        (3, 3),
        (4, 3),
        (5, 4)
;
      
INSERT INTO Retirada_do_Objeto(id, cod_objeto, id_achado_por, id_retirado_por, data_hora_resgate)
    VALUES
        (1, 2, 1, 1, '2021-08-17'),
        (2, 5, 2, 2, '2021-08-17')
;
      
INSERT INTO Objeto_Retirada(cod_objeto, cod_retirada)
    VALUES
        (2, 1),
        (5, 2)
;
