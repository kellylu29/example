require 'sinatra'
require 'sendgrid-ruby'

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
