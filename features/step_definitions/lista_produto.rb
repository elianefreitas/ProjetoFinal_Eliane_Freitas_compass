Quando('clicar na lista de produtos') do
  @telalistaproduto = Pages::TelaListaProduto.new
  @telalistaproduto.lista_produto
end

Então('devera mostrar produtos cadastrados') do
  expect(@telalistaproduto).to have_current_path("https://front.serverest.dev/admin/listarprodutos")
end