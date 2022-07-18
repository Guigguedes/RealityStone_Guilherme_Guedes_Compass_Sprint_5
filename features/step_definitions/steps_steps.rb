E("o título da pagina deve ser {string}") do |titulo|
      expect(page.title).to eq(titulo)
end

E("devo ser redirecionado para tela {string}") do |tela|
      expect(page).to have_content(tela)
end

Então("a página deve conter o seguinte mensagem") do |text|
  expect(account_manage.get_message_manage_account).to eq(text)
end

E("efetuo o login com as seguintes credenciais") do |table|
  File.open("save_email.txt", "r") do |f|
    f.each do |email|
      authentication.do_login(email, table.hashes[0]["password"])
    end
  end
end

E("verifico se tem no estoque o item Printed Chiffon Dress") do
    expect(page.find(:xpath, "//*[@id='center_column']/ul/li[3]/div/div[2]/span/span").text).to eq("In stock")
end

E("aceito o termos do serviço que será prestado") do
        shipping.click_checkbox_terms_shipping
end
