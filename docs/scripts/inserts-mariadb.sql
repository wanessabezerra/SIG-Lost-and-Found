INSERT INTO Telefone(id, numero)
    VALUES
        (1, '084876273514'),
        (2, '084098495736'),
        (3, '084400289223'),
        (4, '084511390333'),
        (5, '084876543210'),
        (6, '082876273514'),
        (7, '082098495736'),
        (8, '082400289223'),
        (9, '082511390333'),
        (10, '082876543210'),
        (11, '083876273514'),
        (12, '083098495736'),
        (13, '083400289223'),
        (14, '083511390333'),
        (15, '083876543210')
 ;
 
INSERT INTO Usuario(id, nome, email, tipo, cod_telefone) 
    VALUES
        (1, 'Seu Chico', 'seuchicao@iahu.com', 'visitante', 1),
        (2, 'Paulin Bacana', 'paulin@bacana.com', 'discente', 2),
        (3, 'Dona Zazá', 'zazadograu@gemeil.com', 'discente', 3),
        (4, 'Jorgin', 'jorgindazn@rotmeil.com', 'docente', 4),
        (5, 'Seu Madruga', 'seumadruguinha@aluguel.com', 'visitante', 5),
        (6, 'José Maria', 'jose@gmail.com', 'visitante', 6),
        (7, 'Jonas', 'jonas@gmail.com', 'discente', 7),
        (8, 'Maria', 'maria@gmail.com', 'discente', 8),
        (9, 'Manoel Marques', 'manuaelh@gmail.com', 'docente', 9),
        (10, 'Samanta Maria', 'samanta10@gmail.com', 'visitante', 10),
        (11, 'Pedro Bial', 'bial@gmail.com', 'visitante', 11),
        (12, 'Ana Laura', 'annalaura@gmail.com', 'discente', 12),
        (13, 'Mariana Silva', 'marianaa@gmail.com', 'discente', 13),
        (14, 'Raquel Pereira', 'raquel@gmail.com', 'docente', 14),
        (15, 'Gabriel Oliveira', 'gabigol@gmail.com', 'discente', 15)
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
        (5, 'Ana Paula', 'anapaula', 'ana@paula.com', 5),
        (6, 'Joaquim Oliveira', 'joaquim', 'joaquim@gmail.com', 3)
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
        (1, 'carteira', 1, '2019-08-17', 'uma carteira com alguns documentos',  'novo', 'perdido', 4),
        (2, 'livro', 2, '2019-08-16', 'livro de harry potter', 'novo', 'encontrado', 5),
        (3, 'mochila', 3, '2019-08-13', 'mochila azul', 'usado', 'perdido', 3),
        (4, 'mochila', 3, '2019-08-13', 'mochila roxa', 'usado', 'perdido', 3),
        (5, 'caneta', 4, '2019-08-12', 'caneta laranja', 'usado', 'encontrado', 3),
        (6, 'carteira', 5, '2020-08-17', 'uma carteira preta de couro',  'novo', 'perdido', 4),
        (7, 'livro', 5, '2020-08-16', 'livro de arduino', 'novo', 'encontrado', 5),
        (8, 'mochila', 6, '2020-08-13', 'mochila azul', 'usado', 'perdido', 3),
        (9, 'celular', 7, '2020-08-13', 'nokia', 'usado', 'perdido', 4),
        (10, 'caneta', 8, '2020-08-12', 'caneta rosa', 'usado', 'encontrado', 3),
        (11, 'celular', 9, '2020-08-17', 'uma carteira com alguns documentos',  'novo', 'perdido', 4),
        (12, 'celular', 9, '2020-08-18', 'samsung', 'novo', 'encontrado', 4),
        (13, 'mochila', 10, '2021-08-13', 'mochila azul', 'usado', 'perdido', 3),
        (14, 'mochila', 10, '2021-08-13', 'mochila laranja', 'usado', 'perdido', 3),
        (15, 'caneta', 10, '2021-08-14', 'caneta vermelha', 'usado', 'encontrado', 3)
;

INSERT INTO Deposito_Objeto(cod_deposito, cod_objeto)
    VALUES
        (1, 1),
        (2, 2),
        (1, 3),
        (3, 4),
        (4, 5),
        (2, 6),
        (3, 7),
        (3, 8),
        (3, 9),
        (4, 10),
        (3, 11),
        (2, 12),
        (4, 13),
        (1, 14),
        (4, 15)
;

INSERT INTO Objeto_Usuario(cod_objeto, cod_usuario) 
    VALUES
        (1, 1),
        (2, 2),
        (3, 3),
        (4, 3),
        (5, 4),
        (1, 1),
        (2, 2),
        (3, 3),
        (4, 3),
        (5, 4),
        (1, 1),
        (2, 2),
        (3, 3),
        (4, 3),
        (5, 4)
;
      
INSERT INTO Retirada_do_Objeto(id, cod_objeto, id_achado_por, id_retirado_por, data_hora_resgate)
    VALUES
        (1, 2, 1, 2, '2019-08-21'),
        (2, 5, 3, 4, '2019-08-22'),
        (3, 3, 2, 5, '2019-08-23'),
        (4, 5, 6, 3, '2020-08-24'),
        (5, 7, 12, 11, '2020-08-21'),
        (6, 10, 15, 12, '2020-09-21'),
        (7, 13, 10, 14, '2021-08-21'),
        (8, 14, 12, 9, '2021-09-21'),
        (9, 11, 12, 9, '2021-09-21')
;
      
INSERT INTO Objeto_Retirada(cod_objeto, cod_retirada)
    VALUES
        (2, 1),
        (5, 2),
        (3, 3),
        (5, 4),
        (7, 5),
        (10, 6),
        (13, 7),
        (14, 8),
        (11, 9)
;
