require 'dotenv'
require 'sinatra'
require 'rest_client'

Dotenv.load

get '/' do
  'butler is serving'
end

get '/car' do
  greeting = RestClient.get "#{ENV['OHAI_SERVICE']}/greeting"
  "#{greeting}. I'll pull the car around now."
end
