require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'capybara/dsl'
require 'site_prism'
require 'site_prism/all_there'
require 'rspec'
require 'rspec/expectations'
require "byebug"
require_relative "pages_helpers.rb"

World(Capybara::DSL)
World(PageObject)

CONFIG = YAML.load_file("cucumber.yml")
AMBIENTE = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{CONFIG["ambiente"]}.yml")

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = AMBIENTE["url"]
    config.default_max_wait_time = 5
end