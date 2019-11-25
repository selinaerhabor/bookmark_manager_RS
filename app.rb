require 'sinatra/base'
class Bookmark < Sinatra::Base

  enable :sessions  #Enables use of session[:hash] for storing data

  get '/' do
    erb :index
  end
  run! if app_file == $0
end
