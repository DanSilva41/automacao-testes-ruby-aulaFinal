Quando("informo {string} e {string} no sistema") do |usuario, senha|
    @user = usuario
    @pass = senha
    find('#CustomerLoginForm_username').set @user
    find('#CustomerLoginForm_password').set @pass
    find(:css, 'input.btn').click
  end
  
  Entao("o sistema apresenta a mensagem {string}") do |mensagem|
    @msg = mensagem
    expect(page).to have_content @msg 
  end