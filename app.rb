require "bundler/setup"
Bundler.require(:default)
require 'pry'
# DONT FORGET TO REMOVE PRY//!!!!!!
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  @stores = Store.all
  @brands = Brand.all
  erb :index
end

get "/inputs/new" do
  erb :input_form
end

post "/stores" do
  Store.create(store: params["store"])
  redirect "/"
end

get "/store/:id" do
  @store = Store.find(params["id"].to_i)
  erb :store
end

patch "/store/:id" do
  @store = Store.find(params["id"].to_i)
  @store.update(store: params["store"])
  erb :store
end

delete "/store/:id" do
  store = Store.find(params["id"].to_i)
  store.delete
  redirect "/"
end

post "/brands" do
  Brand.create(brandname: params["brandname"])
  redirect "/"
end
