require 'sinatra'

set :root, 'lib/app'

get '/' do
  render :html, :index
end
