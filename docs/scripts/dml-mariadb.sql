# 1. Faça uma consulta que selecione o nome, e-mail e telefone de todos os usuários cadastrados no sistema.

SELECT u.nome, u.email, t.numero
FROM Usuario u 
INNER JOIN Telefone t
ON u.id = t.id;

# 2. Faça uma consulta que selecione a quantidade total de objetos presentes no depósito.

SELECT SUM(quantidade)
FROM Deposito;

# 3. Encontre os nomes e e-mails ordenados de todos os funcionários que trabalham para o Achados e Perdidos.

SELECT nome, email 
FROM Funcionario
ORDER BY nome;

# 4. Faça uma consulta que selecione o nome, data e hora de entrada de todos os objetos cadastrados no sistema ordenados.

SELECT nome ,data_hora_entrada
FROM Objeto 
ORDER BY data_hora_entrada;

# 5. Faça uma consulta que selecione o nome, descrição de todos os objetos que foram encontrados e o seu dono.

SELECT u.nome, o.nome, o.descricao, o.status
FROM Objeto o 
INNER JOIN Usuario u
ON o.id_usuario = u.id
WHERE o.status = 'encontrado';

# 6. Faça uma consulta que selecione o nome, descrição de todos os objetos que ainda não foram encontrados e o seu dono.

SELECT u.nome, o.nome, o.descricao, o.status
FROM Objeto o 
INNER JOIN Usuario u
ON o.id_usuario = u.id
WHERE o.status = 'perdido';

# 7. Faça uma consulta que selecione o nome a data e hora dos objetos retirados.

SELECT o.nome, r.data_hora_resgate
FROM Retirada_do_Objeto r, Objeto o
WHERE r.cod_objeto = o.id;

# 8. Mostrar o código e o nome de todos os objetos de cor azul e que continuam perdidos.

SELECT id, nome, descricao, status
FROM Objeto 
WHERE descricao like '%az%' 
AND status = 'perdido';

# 9. Mostrar o código, nome e descrição dos objetos encontrados e mensagens dos usuários que foram notificados.

SELECT o.id, o.nome, o.descricao, o.status, u.nome, m.conteudo
FROM Objeto AS o 
INNER JOIN Usuario AS u
INNER JOIN Mensagem AS m
ON o.status = 'encontrado'
WHERE o.id_usuario = u.id AND m.id_objeto = o.id;

# 10. Encontre os nomes de todos os usuários no banco de dados, que não são tipo discente.

SELECT nome
FROM Usuario 
WHERE tipo <> 'discente';
  
# 11. Faça uma consulta que selecione o objeto e a categoria em que se encontra.

SELECT DISTINCT o.nome, c.nome
FROM Objeto AS o 
INNER JOIN Categoria AS c
ON o.cod_categoria = c.id;

# 12. Encontre os nomes de todos os usuários, que recuperaram o objeto livro.

SELECT u.nome
FROM Usuario u 
WHERE u.id IN (
  SELECT o.id_usuario
  FROM Objeto o 
  WHERE o.nome = 'livro' AND o.status = 'encontrado'
);

# 13. Encontre o nome e email do usuário que realizou a retirada do objeto 2.

SELECT u.nome, u.email
FROM Usuario u
WHERE u.id IN (
  SELECT r.id_retirado_por
  FROM Retirada_do_Objeto r
  WHERE r.cod_objeto = '2' 
);

# 14. Faça uma consulta que selecione os nomes dos usuários que mais encontraram objetos entre 2019 e 2021.

SELECT u.nome
FROM Usuario u
WHERE u.id IN (
  SELECT o.id_usuario
  FROM Objeto o
  WHERE Year(o.data_hora_entrada) BETWEEN '2019' AND '2021'
  AND o.status = 'encontrado'
);

# 15. Faça uma consulta que selecione a categoria dos objetos que estão com o status de perdido entre 2019 e 2021 e que nunca foram recuperados.

SELECT c.nome
FROM Categoria c
WHERE c.id IN (
  SELECT o.cod_categoria
  FROM Objeto o
  WHERE Year(o.data_hora_entrada) BETWEEN '2019' AND '2021' 
  AND o.status = 'perdido'
);
