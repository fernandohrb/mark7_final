
require "capybara"
require "capybara/cucumber"
require "allure-cucumber"

#Geração de relatório de avanço - Allure 
include AllureCucumber::DSL

AllureCucumber.configure do |c|
  c.output_dir = "allure"
end

Cucumber::Core::Test::Step.module_eval do
  def name
    return text if self.text == "Before hook"
    return text if self.text == "After hook"
    "#{source.last.keyword}#{text}"
  end
end

#Configuração para abertura do site
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 5
    config.app_host = 'http://localhost:5000/login'
end
