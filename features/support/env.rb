$LOAD_PATH << './features/support'

require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara-screenshot'
require 'yaml'

Capybara.run_server = false
Capybara.default_driver = :selenium

begin 
  Selenium::WebDriver::Firefox.path = "C:/Program Files/Mozilla Firefox/firefox.exe"
  rescue
  Selenium::WebDriver::Firefox.path = "C:/Program Files (x86)/Mozilla Firefox/firefox.exe"
  end

Capybara.default_driver = :selenium
