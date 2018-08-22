Dado("que eu estou na pagina principal") do
    visit ''
  end
  
  Quando("eu nao informo o login e a senha") do
    find('[name="yt0"]').click
  end
  
  Entao("o sistema apresenta uma mensagem de erro de campos obrigatorios") do
    expect(page).to have_content "Login não pode ser vazio."
    expect(page).to have_content "Senha não pode ser vazio."
  end
  
  Quando("eu informo o login e nao informo a senha") do
    find('#CustomerLoginForm_username').set 'a'
    find('[name="yt0"]').click
  end
  
  Entao("o sistema apresenta uma mensagem de erro de senha obrigatoria") do
    expect(page).to have_content "Senha não pode ser vazio."
  end
  
  Quando("eu informo um valor que nao seja um email ou telefone") do
    find('#CustomerLoginForm_username').set 'a'
    find('#CustomerLoginForm_password').set 'a'
    find('[name="yt0"]').click
  end
  
  Entao("o sistema apresenta uma mensagem de erro de email e telefone") do
    expect(page).to have_content "Para se logar utilize seu e-mail ou seu telefone."
  end
  
  Quando("eu informo uma valor incorreto") do
    find('#CustomerLoginForm_username').set 'dansilva41@hotmail.com'
    find('#CustomerLoginForm_password').set 'a'
    find('[name="yt0"]').click
  end
  
  Entao("o sistema apresenta uma mensagem de usuario incorreto") do
    expect(page).to have_content "Usuário ou senha incorreto."
  end