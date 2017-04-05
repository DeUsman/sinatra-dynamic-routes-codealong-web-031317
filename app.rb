require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  get '/multiply/:num1/:num2' do
  
  	"#{params[:num1].to_i * params[:num2].to_i}"
  end

  # This is a sample dynamic route.
  get "/hello/:id" do
    @user_name = params[:id]
    "Hello #{@user_name}!"
   
  end

  get '/goodbye/:name' do 
  	"Goodbye #{params[:name]}"
  end



end