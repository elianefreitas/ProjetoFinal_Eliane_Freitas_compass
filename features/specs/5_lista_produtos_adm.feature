#language: pt

Funcionalidade: Excluir produto
    COMO um adm da ServeRest
    QUERO acessar a lista de produto 
    PARA excluir um produto
      
Contexto: estar logado
    Dado que esteja logado

@lista_produto
Cenário: exibir lista de produtos
    Quando estiver logado com <email> e <senha>
    E clicar na lista de produtos
    Então devera mostrar produtos cadastrados
    Exemplos:
    | email           | senha           |
    |     "email_adm" |   "senha_adm"   |


     #bundle exec cucumber -p default -t@lista_produto