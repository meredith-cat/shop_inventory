require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('../models/potion.rb')
also_reload( '../models/*' )
