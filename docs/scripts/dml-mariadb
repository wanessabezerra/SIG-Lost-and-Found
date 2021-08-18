# 1. Faça uma consulta que selecione o nome, e-mail e telefone de todos os usuários cadastrados no sistema.

SELECT u.nome, u.email, t.numero
FROM Usuario u 
INNER JOIN Telefone t
ON u.id = t.id

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

# 5. Faça uma consulta que selecione o nome, descrição e situação de todos os objetos que foram encontrados e o seu dono.

SELECT u.nome, o.nome, o.descricao, o.situacao, o.status
FROM Objeto o JOIN Usuario u
ON (o.id_usuario = u.id)
WHERE o.status = 'encontrado';

# 6. Faça uma consulta que selecione o nome, descrição e situação de todos os objetos que ainda não foram encontrados e o seu dono.

SELECT u.nome, o.nome, o.descricao, o.situacao, o.status
FROM Objeto o JOIN Usuario u
ON (o.id_usuario = u.id)
WHERE o.status = 'perdido';

# 7. Faça uma consulta que selecione o nome a data e hora dos objetos retirados.

SELECT o.nome, r.data_hora_resgate
FROM Retirada_do_Objeto r, Objeto o
WHERE r.id = o.id;

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
WHERE u.id = o.id AND m.id_usuario = u.id;
