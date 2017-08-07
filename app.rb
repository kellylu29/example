require 'sinatra'
require 'sendgrid-ruby'
require 'pry'

get '/' do

  erb :index
end

get '/about' do

  erb :about
end

get '/gallery' do

  erb :gallery
end

get '/contact' do

  erb :contact
end

post "/submit" do
  binding.pry
  @params = params
  

end
