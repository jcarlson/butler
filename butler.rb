require 'dotenv'
require 'sinatra'
require 'rest_client'

Dotenv.load

get '/car' do
  greeting = RestClient.get "#{ENV['ohai_service']}/greeting"
  "#{greeting}. I'll pull the car around now."
end

