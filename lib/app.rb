require 'sinatra'
configure { set :server, :puma }

set :root, 'app'

get '/' do
  render :html, :index
end
