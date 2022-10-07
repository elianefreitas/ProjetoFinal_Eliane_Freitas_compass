Dado('que esteja logado') do
    @login_page = Pages::TelaLogin.new
    @login_page.load
end

Quando('estiver logado com {string} e {string}') do |email, senha|
  @login_page.login_usuario(
    Dados.set(email),
    Dados.set(senha)
  )
end

Quando ('buscar produto {string}') do |produto|
  @telaproduto = Pages::TelaProduto.new
  @telaproduto.buscar_produto(
    Dados.set(produto)
  )
end

Então('devo ver o produto pesquisado {string}') do |mensagem|
  expect(@telaproduto).to have_content(
    Dados.set(mensagem)
 )
end

Quando ('buscar produto inexistente {string}') do |produto|
  @telaproduto = Pages::TelaProduto.new
  @telaproduto.buscar_produto(
    Dados.set(produto)
  )
end

Então('devo ver uma mensagem produto inexistente {string}') do |mensagem|
  expect(@telaproduto).to have_content(mensagem)
end