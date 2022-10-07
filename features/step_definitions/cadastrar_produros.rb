Quando('estiver logado com {string}, {string}') do |email, senha|
  @login_page.login_adm(
    Dados.set(email),
    Dados.set(senha)
  )
end

Quando ('estar na tela cadastro produto {string}, {string}, {string}, {string}') do |produto, preco, descricao, quantidade|
  @telacadastroproduto = Pages::TelaCadastroProduto.new
  @telacadastroproduto.cadastrar_produto(
    Dados.set(produto),
    Dados.set(preco),
    Dados.set(descricao),
    Dados.set(quantidade)
  )
end

Então('o produto deve ser cadastrado') do
    expect(@telacadastroproduto).to have_current_path("https://front.serverest.dev/admin/listarprodutos"
)
end