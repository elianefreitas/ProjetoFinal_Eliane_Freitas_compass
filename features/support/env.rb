require "cucumber"
require "capybara"
require "capybara/cucumber"
require "site_prism"
require "selenium-webdriver"
require "rspec"
require "pry"
require "faker"
require "json"

ENVIRONMENT = ENV["ENVIRONMENT"]
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG["url"]

Capybara.default_driver = :selenium_chrome
Capybara.app_host = URL
Capybara.default_max_wait_time = 9