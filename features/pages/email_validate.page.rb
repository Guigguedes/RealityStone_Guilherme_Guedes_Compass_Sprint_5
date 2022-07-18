class RegisterPage < SitePrism::Page

    element :emailInput, :xpath, '//*[@id="email_create"]'
    element :accountButton, :xpath, '//*[@id="SubmitCreate"]/span'
   

    def userRegister 
        emailInput.set "email"
        accountButton.click
    end 
end
        