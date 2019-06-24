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
  
   get '/songs' do
    "Hello World"
  end
  
 post '/songs' do
  redirect to 'songs/songs'
 end


end