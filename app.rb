require 'sinatra'
require './lib/user'

class BirthdayApp < Sinatra::Base
enable :sessions

get '/' do
  erb(:form)
end

post '/birthday' do
  erb(:birthday)
end

post '/days_til_birthday' do
  name = params[:name]
  birthday = params[:birthday]
  session[:birthday] = params[:birthday]
  @birthday = session[:birthday]
  @user = User.new(name, birthday)
  session[:name] = name
  @name = session[:name]
  erb(:days_til_birthday)
end

get '/birthday-greeting' do
  @name = session[:name]
  erb(:birthday_greeting)
end

run! if app_file == $0

end
