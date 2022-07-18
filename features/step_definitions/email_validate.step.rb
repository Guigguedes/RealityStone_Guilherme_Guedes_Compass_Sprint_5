Dado("que esteja na página de Cadastro") do
    @register_page = Register.new
    @register_page.load
    sleep 5
end

  
Quando('preencher o campo com o {string}') do |email|
    @register = RegisterPage.new
    @register.userRegister
end
  
Entao('é validado ou não, seguido pela {string}') do |msg, table|
end
