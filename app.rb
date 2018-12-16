require 'sinatra'

get '/' do
  erb(:form)
end

post '/days_til_birthday' do
  p params
  $name = params["name"]
  $birthday = params["birthday"]
  erb(:days_til_birthday)
end

get '/birthday-greeting' do
  $name = params["name"]
  $birthday = params["birthday"]
  erb(:birthday_greeting)
end
