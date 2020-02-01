require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('../models/potion.rb')
require_relative('../models/maker.rb')
require_relative('../models/type.rb')
also_reload( '../models/*' )

# This controller will have all the gets and posts for routes that start /potions
# It requires all the models as the new potion route will need the options from the makers and potion types tables

get '/potions' do
  @potions = Potion.all
  erb (:"potions/index")
end
