require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    "#{PigLatinizer.new(params[:text]).convert}"
  end
end