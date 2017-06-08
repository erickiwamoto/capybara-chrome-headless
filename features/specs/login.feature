#language: pt

Funcionalidade: Login
  Sendo um usuário do Invoices
  Posso logar no sistema
  Para que acessa meu cadastro e meus clientes

@logout @sussa
Cenario: Login sussa
  
  Dado que eu tenho um usuário com:
      | email | kato.danzo@qaninja.com.br |
      | senha | secret                    |
  Quando faço login
  Então vejo o dashboard logado com a mensagem "Bem Vindo Kato Danzo!"

Cenario: Senha inválida
  
  Dado que eu tenho um usuário com:
      | email | kato.danzo@qaninja.com.br |
      | senha | abc123                    |
  Quando faço login
  Então vejo a mensagem "Incorrect password"
  
  