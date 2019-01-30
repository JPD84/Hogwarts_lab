require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('../models/house)
also_reload('../models/*')

get '/houses' do
  @houses = House.all()
  erb(:"/houses/index")
end
