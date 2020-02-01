require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('controllers/types_controller.rb')
require_relative('controllers/makers_controller.rb')
require_relative('controllers/potions_controller.rb')

get '/' do
  erb( :index )
end
