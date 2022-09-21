class Cadastro < SitePrism::Page
   set_url '/cadastrarusuarios'

   element  :input_name, '#nome'
   element  :input_email, '#email'
   element  :input_password, '#password'

   def insert_cad(name, email, password)
       input_name.set name
       input_email.set email
       input_password.set password
       click_button 'Cadastrar'
   end
end