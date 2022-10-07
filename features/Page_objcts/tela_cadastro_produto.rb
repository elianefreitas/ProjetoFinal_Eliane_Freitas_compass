module Pages
class TelaCadastroProduto < SitePrism::Page
        set_url "/admin/cadastrarprodutos"
        
        element :btn_cadastrar_produto, "a[data-testid='cadastrarProdutos']"
        element :imput_produto, "input[id='nome']"
        element :input_preco, "input[name='price']"
        element :input_descricao, "textarea[name='description']"
        element :input_quantidade, "input[name='quantity']"
        element :btn_cadastrar, "button[type='submit']"
    
        
        def cadastrar_produto(produto,preco,descricao,quantidade)
            btn_cadastrar_produto.click
            imput_produto.set produto
            input_preco.click
            input_preco.set preco
            input_descricao.click
            input_descricao.set descricao
            input_quantidade.click
            input_quantidade.set quantidade
            btn_cadastrar.click
        end
        
end
end