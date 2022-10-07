module Pages
class TelaListaProduto < SitePrism::Page
    set_url "/admin/listarprodutos"
         
    element :btn_lista, "a[data-testid='listarProdutos']"

    
    def lista_produto
        btn_lista.click
       
    end
    
end
end