
#Configuração de abertura do site maximizado
Before do |scn|
  Capybara.current_session.driver.browser.manage.delete_all_cookies
  page.driver.browser.manage.window.maximize
end

#Logout do site
After("@logout") do
  click_link @email
  click_link "Sair"
end
