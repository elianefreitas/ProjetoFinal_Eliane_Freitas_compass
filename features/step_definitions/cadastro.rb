Dado('que esteja na tela de Cadastro') do
    @cadastro_page = Pages::TelaCadastro.new 
    @cadastro_page.load
 end

Quando('inserir os dados usuarios validos {string}, {string}, {string}') do |nome, email, senha|
  @cadastro_page.cadastro_usuario(
    Dados.set(nome),
    Dados.set(email),
    Dados.set(senha)
  )
end

Então('o usuário será cadastrado {string}') do |mensagem|
  expect(@cadastro_page).to have_content(mensagem)
end

Quando('inserir os dados usuarios inválidos {string}, {string}, {string}') do |nome, email, senha|
  @cadastro_page.cadastro_usuario(
    Dados.set(nome),
    Dados.set(email),
    Dados.set(senha)
  )
end

Então('o usuário deverá receber uma mensagem de erro {string}') do |mensagem|
  expect(@cadastro_page).to have_content(mensagem)
end

Quando('inserir os dados adm válidos {string}, {string}, {string}') do |nome, email, senha|
  @cadastro_page.cadastrar_adm(
    Dados.set(nome),
    Dados.set(email),
    Dados.set(senha),
  )
end

Então('o usuário administrador deverá ser cadastrado com a mensagem {string}') do |mensagem|
  expect(@cadastro_page).to have_content(mensagem)
end

Quando('inserir os dados adm inválidos {string}, {string}, {string}') do |nome, email, senha|
  @cadastro_page.cadastrar_adm(
    Dados.set(nome),
    Dados.set(email),
    Dados.set(senha),
  )
end

Então('o usuário deverá receber uma mensagem adm {string}') do |mensagem|
  expect(@cadastro_page).to have_content(mensagem)
end