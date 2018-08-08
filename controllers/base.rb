get '/' do
  @nav_links = [{ url: '/game/', name: 'Games'}]
  erb :'base/index', layout: :'layouts/application'
end
