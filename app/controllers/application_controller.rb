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
  puts Title: @song = params[:song]["title"]
  puts Length: @song = params[:song]["length"]
 end


end