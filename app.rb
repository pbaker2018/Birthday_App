require 'sinatra'

enable :sessions

get '/' do
  erb(:form)
end

post '/days_til_birthday' do
  p params
  p session["name"] = params["name"]
  p session["birthday"] = params["birthday"]
  p @name = session["name"]
  p @birthday = session["birthday"]
  erb(:days_til_birthday)
end

get '/birthday-greeting' do
  erb(:birthday_greeting)
end
