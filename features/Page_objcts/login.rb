class Login < SitePrism::Page
   set_url '/'
    
   element  :input_email, '#email'
   element  :input_password, '#password'

   def insert_login(email, password)
      input_email.set email
      input_password.set password
      click_button 'Entrar'
   end
end