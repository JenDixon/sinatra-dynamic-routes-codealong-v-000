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

  get "/goodbye/:name" do
    status 200
    @user_name = params[:name]
    "Goodbye #{@user_name}"
  end

  get "/multiply/:num1/:num2" do
    status 200
    params[:num1] * params[:num2]
  end

end
