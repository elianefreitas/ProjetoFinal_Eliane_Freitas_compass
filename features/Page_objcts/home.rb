class Home < SitePrism::Page
    set_url "/home"
    
    element :search_field, 'input[data-testid="pesquisar"]'

    def search_product(product)
        search_field.set product
        click_button 'Pesquisar'
    end
end