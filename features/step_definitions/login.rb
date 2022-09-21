Dado('que esteja na página de login') do
      @login_page = Login.new
      @login_page.load
  end
    
  Quando('eu fizer o login com {string} e {string}') do |string, string2|
      @login_page.insert_login(string, string2)
  end
    
  Então('devo logar com sucesso para área da home') do
      @home_page = Home.new
  end
  
  Quando('eu realizar o login com {string} e {string}') do |string, string2|
      @login_page.insert_login(string, string2)
  end
    
  Então('deve ser apresentada a mensagem {string}') do |string|
      expect(@login_page).to have_content string
  end