#language: pt

@loginout
Funcionalidade: Login
SENDO UM USUARIO do sistema
EU QUERO acessar a aplicação
PARA que eu possa assistir filmes

Esquema do Cenario: Validar login
Dado que eu estou na pagina principal
Quando informo "<usuario>" e "<senha>" no sistema
Entao o sistema apresenta a mensagem "<mensagem>"

Exemplos:
    |usuario                |senha      |mensagem|
    |                       |           |Login não pode ser vazio.|
    |a                      |           |Senha não pode ser vazio.|
    |a                      |a          |Para se logar utilize seu e-mail ou seu telefone.|
    |dansilva41@hotmail.com |a         |Usuário ou senha incorreto.|