require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
  end

  get "/" do
    erb :welcome
  end

  post "/check-meow" do
    input = params[:meow]
    if Cat.meow_is_real(input)
      p "SUCCESS, IT'S A MEOW"
    else
      p "BOOOO, NO MEOW DETECTED"
    end
  end

end
