require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    p $player_1 = Player.new(params[:player_1_name])
    p $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    p @player_1_name = $player_1.name
    p @player_2_name = $player_2.name
    erb(:play)
  end

  get '/attack' do
    p @player_1_name = $player_1.name
    p @player_2_name = $player_2.name
    erb(:attack)
  end

run! if app_file == $0

end
