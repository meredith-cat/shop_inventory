require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('../models/maker.rb')
also_reload( '../models/*' )
