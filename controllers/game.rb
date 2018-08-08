get '/game/' do
  erb :'game/index', layout: :'layouts/application'
end

post '/game/' do
  game = Game.new
  game.id = params[:id]
  game.save
  redirect back
end

get '/game/:id' do
  erb :'game/game', layout: :'layouts/application'
end

get '/api/games' do
  json Game.all
end
