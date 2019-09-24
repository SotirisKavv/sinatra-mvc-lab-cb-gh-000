require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinizer' do
    "#{PigLatinizer.new.piglatinize(params[:text])}"
  end
end
