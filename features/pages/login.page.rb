class LoginPage < SitePrism::Page

    element :signInButton, :xpath, '//*[@id="header"]/div[2]/div/div/nav/div[1]/a'
    element :emailField, :xpath, '//*[@id="email"]'
    element :passwordField, :xpath, '//*[@id="passwd"]'
    element :loginButton, :xpath, '//*[@id="SubmitLogin"]/span'

    def userLogin
        emailField.set "email"
        passwordField.set "password"
        loginButton.click
    end
end
