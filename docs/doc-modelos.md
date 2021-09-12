# Modelo Entidade Relacionamento (MER)
![Modelo ER do Banco Lost and Found](<https://github.com/wanessabezerra/SIG-Lost-and-Found/blob/main/docs/images/Lost%26Found_MER.png>)

# Modelo Relacional (MR) 

Deposito ( *id*, nome, quantidade)  
Funcionario (*id*, nome, email, username, **cod_deposito**)  
Telefone(*id*, numero)  
Usuario (*id*, nome, email, tipo, **cod_telefone**)  
Objeto (*id*, nome, id_usuario, data_hora_entrada, descricao, situacao, status, **cod_categoria**)  
Categoria (*id*, nome)  
Deposito_Objeto (**cod_deposito**, **cod_objeto**)  
Objeto_Usuario (**cod_objeto**, **cod_usuario**)  
Retirada_do_Objeto (*id*, **cod_objeto**, id_achado_por, id_retirado_por, data_hora_resgate)  
Objeto_Retirada (**cod_objeto**, **cod_retirada**)  
Mensagem (*id*, id_objeto, id_usuario, conteudo, **cod_funcionario**, **cod_usuario**)  
## Descrição das chaves estrangeiras:
Funcionario(cod_deposito) ⇒ Deposito(id)  
Usuario(cod_telefone) ⇒ telefone(id)  
Objeto(cod_categoria) ⇒ Categoria(id)  
Deposito_Objeto(cod_deposito) ⇒ Deposito(id)  
Deposito_Objeto(cod_objeto) ⇒ Objeto(id)  
Objeto_Usuario(cod_objeto)  ⇒ Objeto(id)  
Objeto_Usuario(cod_usuario)  ⇒ Usuario(id)  
Retirada_do_Objeto(cod_objeto) ⇒ Objeto(id)  
Objeto_Retirada(cod_objeto) ⇒ Objeto(id)  
Objeto_Retirada(cod_retirada) ⇒ Retirada_do_Objeto (id)  
Mensagem(cod_funcionario) ⇒ Funcionario(id)  
Mensagem(cod_usuario) ⇒ Usuario(id)  

---

<p align="center"><strong>❔ LOST&FOUND :closed_umbrella: <strong></p>
