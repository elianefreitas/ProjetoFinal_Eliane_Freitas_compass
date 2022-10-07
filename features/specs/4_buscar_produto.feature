#language: pt

Funcionalidade: Buscar por produto
    COMO um usuário da ServeRest
    QUERO acessar a home 
    PARA buscar por produto
      
Contexto: estar logado
    Dado que esteja logado

@buscar_produto
Cenário: Buscar produto
    Quando estiver logado com <email> e <senha>
    E buscar produto <produto>
    Então devo ver o produto pesquisado <msg>
    Exemplos:
    | email           | senha           | produto     | msg        |
    |     "email"     |    "senha"      | "produto"   | "produto"  |

@buscar_produto_inexistente
Cenário: Buscar produto inexistente
    Quando estiver logado com <email> e <senha>
    E buscar produto inexistente <produto_inexistente>
    Então devo ver uma mensagem produto inexistente <msg>
    Exemplos:
    | email           | senha           | produto_inexistente     | msg                              |
    |     "email"     |    "senha"      | "produto_inexistente"   | "Nenhum produto foi encontrado"  |

    



    #bundle exec cucumber -p default -t@buscar_produto
    #bundle exec cucumber -p default -t@buscar_produto_inexistente