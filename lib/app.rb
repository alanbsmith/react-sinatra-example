require 'sinatra'
configure { set :server, :puma }

set :root, 'lib/app'

get '/' do
  render :html, :index
end
