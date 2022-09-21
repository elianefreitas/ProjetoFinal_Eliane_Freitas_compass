#language: pt

@login
Funcionalidade: Login
    COMO um usuário da ServeRest
    QUERO poder logar no sistema 
    PARA poder verificar os produtos
    
    Contexto: Estar na página de login
        Dado que esteja na página de login

    @login_sucess
    Cenário: Logar com sucesso
        Quando eu fizer o login com "elianesfreitas.freitas@gmail.com" e "010203"
        Então devo logar com sucesso para área da home     
    
    @login_not_sucess
    Esquema do Cenário: Login inválido
         Quando eu realizar o login com "<email>" e "<senha>"
         Então deve ser apresentada a mensagem "<msg>"
         Exemplos:
         | email                            | senha           |  msg                                       |
         | elianesfreitas.freitas@gmail.com | 88888           |  Email e/ou senha inválidos                |
         | erro@erro.com                    | 010203          |  Email e/ou senha inválidos                |
         |                                  | 010203          |  Email é obrigatório                       |
         | elianesfreitas.freitas@gmail.com |                 |  Password é obrigatório                    |
         |                                  |                 |  Email e password não pode ficar em branco |