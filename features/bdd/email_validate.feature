#language: pt

@email_validate
Funcionalidade: Validação de email
    Como usuário do sistema
    Quero adicionar um email
    Para criar um cadastro

Contexto:
    Dado que esteja na página de Cadastro

    Cenario: validar um email para cadastro
        Quando preencher o campo com o "<email>" 
        Então é validado ou não, seguido pela "<msg>"
        | email                  | msg                                                                                                                 |
        | teste@teste.com        |                                                                                                                     |
        | teste@teste            | Invalid email address.                                                                                              |
        | teste@teste.com        | An account using this email address has already been registered. Please enter a valid password or request a new one |

    


