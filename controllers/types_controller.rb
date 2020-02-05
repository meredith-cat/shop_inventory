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

post '/types/:id' do
  @type = Type.new(params)
  @type.update
  redirect to ('/types')
end

post '/types/:id/delete' do
  @type = Type.find(params[:id])
  @type.delete
  redirect to('/types')
end
