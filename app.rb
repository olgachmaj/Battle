require 'sinatra'

require 'capybara'
require 'capybara/rspec'
require 'rspec'



class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @name = params[:name]
    erb :play
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
Capybara.app = Battle
