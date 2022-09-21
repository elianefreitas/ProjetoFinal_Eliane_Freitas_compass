#language: pt

@home
Funcionalidade: Home
    COMO um usuário da ServeRest
    QUERO acessar a home 
    PARA poder verificar os produtos
      
    Contexto:Acessar a home
        Dado que faça login com "elianesfreitas.freitas@gmail.com" e "010203"

    @search_product
    Cenário: Buscar por produto existente
        Quando buscar por produto "Florian"
        Então devo ver o produto pesquisado