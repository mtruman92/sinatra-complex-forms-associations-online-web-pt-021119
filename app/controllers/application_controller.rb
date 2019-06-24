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
  @recipe = Song.new

  # get data from params
  @recipe.title = params[:title]
  @recipe.descriptions = params[:descriptions]
  @recipe.ingredients = params[:ingredients]
  @recipe.method = params[:method]
  @recipe.save
  
  redirect "/songs/songs"
end


end