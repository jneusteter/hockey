get '/game/' do
  erb :'game/index', layout: :'layouts/application'
end

post '/game/' do
  p params
  game = Game.new
  game.id = params[:id]
  game.save
  if request.xhr?
    'OK'
  else
    redirect back
  end
end

get '/game/:id' do
  erb :'game/game', layout: :'layouts/application'
end

get '/api/games' do
  json Game.all
end
