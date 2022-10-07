module Pages
class TelaProduto < SitePrism::Page
    set_url "/home"
    
    element :search_field, 'input[data-testid="pesquisar"]'
    element :btn_search, "button[data-testid='botaoPesquisar']"
   

    def buscar_produto(produto)
        search_field.click
        search_field.set produto
        btn_search.click
     end

end
end