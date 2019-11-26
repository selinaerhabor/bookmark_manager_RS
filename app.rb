require 'sinatra/base'
require './lib/bookmarks.rb'
class Bookmark < Sinatra::Base

  enable :sessions  #Enables use of session[:hash] for storing data

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb :index
  end
  run! if app_file == $0
end
