get '/team/' do
  @teams = Team.all
  erb :'team/index', layout: :'layouts/application'
end

post '/team/' do
  team = Team.new
  team.name = params[:name]
  team.save
  redirect back
end