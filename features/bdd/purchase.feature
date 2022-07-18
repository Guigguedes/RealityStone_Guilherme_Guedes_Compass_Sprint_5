#language: pt

@purchase
  Funcionalidade: Efetuar comprar no site automation practice
        Como usuário que realizar a compra de um vestido no site Automation Practice

        Contexto: Preparação de ambiente
              Dado que esteja na tela inicial do site Automation Practice


        Cenario: Realizar comprar
          Dado que clico no categoria Dresses
          Quando clico na subcategoria Summer Dresses
          E o título da pagina deve ser "Summer Dresses - My Store"
          E verifico se tem no estoque o item Printed Chiffon Dress
          E seleciono o Dresses de cor amarela
          E valido as seguintes informações do pedido
          
          | name_product          | quantity | size | color |
          | Printed Chiffon Dress |   1      | S    | yellow|
          
          E clico no botão Add to cart
          E savo o valor total da compra
          E clico no botão Proceed to checkout
          E devo ser redirecionado para tela "SHOPPING-CART SUMMARY"
          E clico no botão Proceed to checkout
          E devo ser redirecionado para tela "AUTHENTICATION"
          E efetuo o login com as seguintes credenciais
          
          | email  | password  |
          | $email | 123Mudar* |
          
          E valido as seguintes informações do endereço
          
          | name   | street  | city   | zip  | country | mobile        |
          | Bruno  | Nine    | Texas  | 76621| United  | 1(212)444-9999|
         
          E na tela Adress clico no botão Proceed to checkout
          E devo ser redirecionado para tela "Shipping"
          E aceito o termos do serviço que será prestado
          E na tela Shipping clico no botão Proceed to checkout
          E devo ser redirecionado para tela "Payment"
          E seleciono a opção Pay by bank wire
          E devo ser redirecionado para tela "ORDER SUMMARY"
          E clico no botão I confirm my order
          E devo ser redirecionado para tela "ORDER CONFIRMATION"
          Então valido as seguintes informações da tela Order Confirmation
          
          | Message_confirmation                | Amount |
          | Your order on My Store is complete. | $valor |
