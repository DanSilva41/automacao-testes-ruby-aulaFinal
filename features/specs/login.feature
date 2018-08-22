#language: pt

@login
Funcionalidade: Login
SENDO UM USUARIO do sistema
EU QUERO acessar a aplicação
PARA que eu possa assistir filmes

Cenario: Campos obrigatorios
Dado que eu estou na pagina principal
Quando eu nao informo o login e a senha
Entao o sistema apresenta uma mensagem de erro de campos obrigatorios

Cenario: Senha obrigatoria
Dado que eu estou na pagina principal
Quando eu informo o login e nao informo a senha
Entao o sistema apresenta uma mensagem de erro de senha obrigatoria

Cenario: Logar com email e telefone
Dado que eu estou na pagina principal
Quando eu informo um valor que nao seja um email ou telefone
Entao o sistema apresenta uma mensagem de erro de email e telefone

Cenario: Usuario incorreto
Dado que eu estou na pagina principal
Quando eu informo uma valor incorreto
Entao o sistema apresenta uma mensagem de usuario incorreto

