require 'sinatra'

require 'capybara'
require 'capybara/rspec'
require 'rspec'



class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
Capybara.app = Battle
