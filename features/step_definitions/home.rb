Dado('que faça login com {string} e {string}') do |string, string2|
    @login_page = Login.new
    @login_page.load
    @login_page.insert_login(string, string2)
    @home_page = Home.new
end

Quando('buscar por produto {string}') do |string|
    @home_page.search_product(string)
end
  
Então('devo ver o produto pesquisado') do
    @pesquisa = Pesquisa.new
end

Então('deve apresentar produto encontrado') do
    expect(@home_page).to have_content "Produtos"
end