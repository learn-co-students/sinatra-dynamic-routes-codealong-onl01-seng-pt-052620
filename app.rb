require_relative 'config/environment'
require 'erb'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get '/hello/:name' do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end
  
# A dynamic route starting with `/multiply` that accepts two params (num1 and
#   num2) and returns the product of the two numbers.
get '/multiply/:num1/:num2' do
  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  
  erb:multiply 
end

end