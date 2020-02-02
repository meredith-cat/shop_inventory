require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('../models/potion.rb')
require_relative('../models/maker.rb')
require_relative('../models/type.rb')
also_reload( '../models/*' )


get '/potions' do
  @potions = Potion.all
  erb (:"potions/index")
end

get '/potions/new' do
  @makers = Maker.all
  @types = Type.all
  erb(:"potions/new")
end

get '/potions/:id' do
  @potion = Potion.find(params[:id])
  erb(:'potions/show')
end

post '/potions' do
  @potion = Potion.new(params)
  @potion.save
  redirect to ('/')
end
