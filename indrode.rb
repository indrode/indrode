require 'sinatra'
require 'haml'

set :root, File.dirname(__FILE__)
set :haml, :layout_engine => :haml, :layout => :index

get '/' do
  haml :main
end