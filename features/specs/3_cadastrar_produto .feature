#language: pt

Funcionalidade: cadastrar produto
    COMO um adm da ServeRest
    QUERO acessar a home 
    PARA Cadastrar produto
      
Contexto: estar logado
    Dado que esteja logado

@cadastrar_produto
Cenário: caadastrar produto
    Quando estiver logado com <email>, <senha>
    E estar na tela cadastro produto <produto>, <preco>, <descricao>, <quantidade>
    Então o produto deve ser cadastrado
    Exemplos:
    | email           | senha           | produto          | preco            | descricao           |  quantidade           |
    |     "email_adm" |   "senha_adm"   | "nome_produto"   | "preco_produto"  | "descricao_produto" |  "quantidade_produto" |

  #bundle exec cucumber -p default -t@cadastrar_produto
