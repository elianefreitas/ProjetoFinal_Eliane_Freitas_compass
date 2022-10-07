#language: pt

Funcionalidade: Login
    COMO um usuário da ServeRest
    QUERO poder logar no sistema
    PARA poder verificar os produtos
    
    Contexto: Estar na página de login
        Dado que esteja na página de login

@login_sucess
Cenário: Logar com sucesso
    Quando eu fizer o login com <email>, <senha>
    Então devo logar com sucesso para área da home <msg>
    Exemplos:
    | nome      | email           | senha           | msg               |
    | "nome"    |     "email"     |    "senha"      | "Serverest Store" |
    
@login_not_sucess
Esquema do Cenário: Login inválido
    Quando eu realizar o login com <email>, <senha>
    Então deve ser apresentada a mensagem <msg>
    Exemplos:
    | email               | senha             |  msg                                 |
    | "email"             | "senha_invalida"  |  "Email e/ou senha inválidos"        |
    | "email_invalido"    | "senha"           |  "Email e/ou senha inválidos"        |
    | "email_vazio"       | "senha"           |  "Email é obrigatório"               |
    | "email"             | "senha_vazia"     |  "Password não pode ficar em branco" |


    #bundle exec cucumber -p default -t@login_sucess
    #bundle exec cucumber -p default -t@login_not_sucess