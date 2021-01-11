require 'sinatra'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect(:play)
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb(:play)
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb(:attack)
  end

  post '/attack' do
    p params
    redirect(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end