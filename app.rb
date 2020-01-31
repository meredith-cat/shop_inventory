require( 'sinatra' )
require( 'sinatra/contrib/all' )
# This will be the file run to open the title screen
# It will need to require sinatra
# It will need to require_relative the individual controllers for each class
# It will need a route to the homepage (/)
get '/' do
  erb( :index )
end
