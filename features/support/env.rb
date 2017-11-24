require 'rspec'
require 'HTTParty'
require 'pry'

ENVIRONMENT = YAML.load_file('./config/environment.yml')

MASSA = YAML.load_file('./fixtures/default_data.yml')


