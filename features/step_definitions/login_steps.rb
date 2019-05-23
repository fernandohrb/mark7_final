
#Abertura do site
Dado("que eu acesso a página principal") do
  visit "http://localhost:5000/login"
end

#Login utilizando o encapsulamento pages.rb
Quando("eu faço o login com {string} e {string}") do |email, senha|
  @email = email
  login = LoginPage.new
  login.faz_login(email, senha)

  #Login por estância anonima EXEMPLO ALTERNATIVO
  #LoginPage.new.faz_login(email, senha)
end

#Autenticar reconhecendo o e-mail
Então("devo ser autenticado com sucesso") do
  expect(page).to have_content @email
end

#Mensagem de autenticação
Então("devo ver a seguite mensagem {string}") do |mensagem|
  expect(page).to have_content mensagem
end
