Dado("que esteja na página de Login") do
    @login_page = Login.new
    @login_page.load
    sleep 5
end
  
Quando('realizar o login informando os campos {string} {string}') do |email, password|
    @login = LoginPage.new
    @login.userLogin
end
  
Entao('é exibida a {string}') do |msg, table|
    
end