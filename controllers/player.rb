get '/player/' do
  @players = Player.all
  erb :'player/index', layout: :'layouts/application'
end

post '/player/' do
  player = Player.new
  player.id = params[:id].to_i
  player.first_name = params[:first_name]
  player.last_name = params[:last_name]
  player.shoots = params[:shoots]
  player.save
  redirect "/player/"
end