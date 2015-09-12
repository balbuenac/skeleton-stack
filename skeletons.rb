require 'rubygems'
require 'sinatra'
require 'mongo'
require 'json/ext' # required for .to_json

configure do
  db = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'skeleton')
  set :mongo_db, db[:skeleton]
end

get '/' do
  "Hello, World!"
end

get '/about' do
  'A little about me.'
end

get '/hello/:name' do
  params[:name]
end

get '/books' do
  content_type :json
  settings.mongo_db.find.to_a.to_json
end
