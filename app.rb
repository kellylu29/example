require 'sinatra'
require 'sendgrid-ruby'
require 'pry'
include SendGrid

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
  @subject = params[:subject]
  @email = params[:email]
  @message = params[:message]

  from = Email.new(email: @email)
  to = Email.new(email: "kellylovelu@gmail.com")
  subject = @subject
  content = Content.new(type: 'text/plain', value: @message)
  mail = Mail.new(from, subject, to, content)

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  puts response.status_code
  puts response.body
  puts response.headers
  redirect "/"
end
