class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }
  
    get '/songs/new' do
      erb :"songs/new"
    end
  
  get '/' do
   redirect to "/songs/new"
  end
  
  

  get '/songs/new' do
  erb :'songs/new'
end

post '/songs' do
  @songs = Song.new

  # get data from params
  @songs.title = params[:title]
  @songs.descriptions = params[:descriptions]
  @songs.ingredients = params[:ingredients]
  @songs.method = params[:method]
  @songs.save
  
  redirect "/songs/songs"
end


end