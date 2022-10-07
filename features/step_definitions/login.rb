Dado('que esteja na página de login') do
    @login_page = Pages::TelaLogin.new
    @login_page.load
  end
    
Quando('eu fizer o login com {string}, {string}') do |email, senha|
  @login_page.login_usuario(
    Dados.set(email),
    Dados.set(senha)
  )
end
    
Então('devo logar com sucesso para área da home {string}') do |mensagem|
  expect(@login_page).to have_content(mensagem)
end
  
Quando('eu realizar o login com {string}, {string}') do |email, senha|
  @login_page.login_adm(
    Dados.set(email),
    Dados.set(senha)
  )
end
    
Então('deve ser apresentada a mensagem {string}') do |mensagem|
  expect(@login_page).to have_content(mensagem)
end