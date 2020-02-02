require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('../models/maker.rb')
also_reload( '../models/*' )

get '/makers' do
  @makers = Maker.all
  erb(:"makers/index")
end

post '/makers' do
  @maker = Maker.new(params)
  @maker.save
  redirect to("/makers")
end

get '/makers/new' do
  erb(:"makers/new")
end

get '/makers/:id' do
  @maker = Maker.find(params[:id])
  erb(:"makers/show")
end

post '/makers/:id/delete' do
  @maker = Maker.find(params[:id])
  @maker.delete
  redirect to ('/makers')
end
