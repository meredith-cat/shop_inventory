require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('../models/type.rb')
also_reload( '../models/*' )

get '/types' do
  @types = Type.all
  erb (:"types/index")
end

post '/types' do
  @type = Type.new(params)
  @type.save
  redirect to("/types")
end
