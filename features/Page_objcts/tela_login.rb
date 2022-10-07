module Pages
class TelaLogin < SitePrism::Page
   set_url "/login"

   element :input_email, "input[name='email']"
   element :input_senha, "input[name='password']"
   element :btn_login, "button[class='btn btn-primary']"

   def login_usuario(email, senha)
      input_email.click
      input_email.set email
      input_senha.click
      input_senha.set senha
      btn_login.click
   end

   def login_adm(email, senha)
      input_email.click
      input_email.set email
      input_senha.click
      input_senha.set senha
      btn_login.click
   end

end
end