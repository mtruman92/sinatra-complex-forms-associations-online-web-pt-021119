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
  
  
  
 post '/songs' do
  erb :"/songs/songs"
 @song = params[:song]["title"];
 @song = params[:song]["length"];
 @song = params[:song]["play_count"]
 end


end