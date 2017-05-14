require "bundler/setup"
Bundler.require(:default)
require 'pry'
# DONT FORGET TO REMOVE PRY//!!!!!!
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  @stores = Store.all
  erb :index
end

get "/stores/new" do
  erb :input_form
end

post "/stores" do
  Store.create(store: params["store"])
  redirect "/"
end
