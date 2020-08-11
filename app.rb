require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:number_1/:number_2" do
    @number_1 = params[:number_1]
    @number_2 = params[:number_2]
    "#{@number_1} x #{@number_2} = #{@number_1.to_i * @number_2.to_i}"
  end
end