require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('../models/potion.rb')
require_relative('../models/maker.rb')
require_relative('../models/type.rb')
also_reload( '../models/*' )


get '/potions' do
  @potions = Potion.all
  @makers = Maker.all
  erb (:"potions/index")
end

get '/potions/new' do
  @makers = Maker.all
  @types = Type.all
  erb(:"potions/new")
end

get '/potions/maker/' do
  id = params[:maker_id]
  # potions by maker method to return all potions for that maker
  @potions = Potion.find_by_maker(id)
  @makers = Maker.all
  erb (:"potions/index")
end

# get '/potions/maker/:id' do
#   maker = Maker.find(params[:id])
#   @potions = maker.potions
#   erb (:"potions/index")
# end

get '/potions/:id' do
  @potion = Potion.find(params[:id])
  erb(:'potions/show')
end

get '/potions/:id/edit' do
  @potion = Potion.find(params[:id])
  @makers = Maker.all
  @types = Type.all
  erb(:'potions/edit')
end

post '/potions/:id' do
  potion = Potion.new(params)
  potion.update
  redirect to "/potions"
end

post '/potions/:id/delete' do
  @potion = Potion.find(params[:id])
  @potion.delete
  redirect to ('/potions')
end

post '/potions' do
  @potion = Potion.new(params)
  @potion.save
  redirect to ('/potions')
end
