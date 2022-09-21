#language: pt

Funcionalidade: Cadastro
    COMO um usuário do sistema
    QUERO poder fazer um novo cadastro 
    PARA poder logar no sistema

    Contexto: Estar na página de cadastro
        Dado que esteja na página de cadastro

    @registration_sucess
    Cenário: Cadastrar com sucesso
        Quando realizar cadastro com os campos "Eliane" "elianesfreitas.freitas@gmail.com" e "010203"
        Então deverá cadastrar com sucesso e ir para home
    
    @registration_not_sucess
    Esquema do Cenário: Cadastrar conta inválida
        Quando realizar cadastro informando os campos "<nome>" "<email>" e "<senha>"
        Então a mensagem é exibida "<msg>"
        Exemplos:
        | nome  | email                            | senha   | msg                               |
        |Eliane |                                  |         | Email e password  é obrigatório   |
        |Eliane | elianesfreitas.freitas@gmail.com |         | Password é obrigatório            |
        |Eliane | elianesfreitas.freitas@gmail.com | 010203  | Este email já está sendo usado    |
        |       | elianesfreitas.freitas@gmail.com | 010203  | Nome não pode ficar em branco     |