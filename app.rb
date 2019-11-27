require 'sinatra/base'
require './lib/bookmarks.rb'
class Bookmark < Sinatra::Base

  enable :sessions  #Enables use of session[:hash] for storing data

  get '/' do
    erb :"bookmarks/index"
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end
  # get '/bookmarks' do
  #   @bookmarks = Bookmarks.all
  #   erb :"bookmarks/index"
  #   p "Form data submitted to the /bookmarks route!"
  #   p params
  # end

  post '/bookmarks' do
    # url = params['url']
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    # redirect '/bookmarks'
    #Adds a new bookmark
    Bookmarks.create(params[:url])
    #Displays list of bookmarks stored
    @bookmarks = Bookmarks.all
    erb :"bookmarks/index"
  end

  run! if app_file == $0
end
