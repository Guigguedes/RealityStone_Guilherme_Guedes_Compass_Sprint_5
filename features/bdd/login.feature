#language: pt

@login
Funcionalidade: Login de usuário
    Como usuário do sistema
    Quero realizar um login
    Para realizar compras

Contexto:
    Dado que esteja na página de Login


    Cenario: login completo
        Quando realizar o login informando os campos "<email>" "<password>" 
        Então é exibida a "<msg>"
        | email           | password | msg                                                                                       |
        |                 |  Test3   | Invalid email address.                                                                    | 
        | gonça@teste.com |          | Password is required.                                                                     |
        | gonça@teste.com |  Test3   | Welcome to your account. Here you can manage all of your personal information and orders. |
        