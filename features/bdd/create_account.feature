#language: pt

@create_account
Funcionalidade: Realizar cadastro na loja virtual
      Como usuário quero realizar um cadastro na loja virtual automation practice

      Contexto: Preparação de ambiente
            Dado que esteja na tela de cadastro

      Cenario: Cadastro de usuário
            Quando preencher o campo Email address "test_automation@gmail.com"
            E clicar no botão Create an account
            E o título da pagina deve ser "Login - My Store"
            E depois preencher os campos de informação pessoal com os seguintes valores
            
            |Title |First_name |Last_name |Email                    |Password |Date_of_Birth   |
            |Mr.   |Gabriel    |Goncalvez |test_automation@gmail.com|123Mudar*|12/December/1993|
            
            E preencher os campos de endereço com as seguintes valores
            
            |First_name  |Last_name   |Adress      |City         |State|Zip  |Mobile        |References|
            |Gabriel     |Goncalvez   |Street Nine |United States|Texas|76621|1(212)444-9999|Walmart   |
            
            E clicar no botão Register
            Então a página deve conter o seguinte mensagem
            """
            Welcome to your account. Here you can manage all of your personal information and orders.
            """
