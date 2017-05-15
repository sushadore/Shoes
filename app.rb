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

get "/stores/new" do
  erb :store_form
end

post "/stores" do
  @store = Store.create(store: params["store"])
  if @store.save
    redirect "/"
  else
    erb :errors
  end
end

get "/store/:id" do
  @store = Store.find(params["id"].to_i)
  @brands = Brand.all
  erb :store
end

patch "/store/:id" do
  @store = Store.find(params["id"].to_i)
  @store.update(store: params["store"])
  redirect "/store/#{@store.id}"
end

delete "/store/:id" do
  store = Store.find(params["id"].to_i)
  store.delete
  redirect "/"
end

post "/store/:id" do
  @store = Store.find(params["id"].to_i)
  @store.update(brand_ids: params["brands_id"])
  @brands = Brand.all
  redirect "/store/#{@store.id}"
end

get "/brands/new" do
  erb :brand_form
end

post "/brands" do
  @brand = Brand.create(brandname: params["brandname"], price: params["price"])
  if @brand.save
    redirect "/"
  else
    erb :errors
  end
end

get "/brand/:id" do
  @brand = Brand.find(params["id"].to_i)
  @stores = Store.all
  erb :brand
end

delete "/brand/:id" do
  brand = Brand.find(params["id"].to_i)
  brand.delete
  redirect "/"
end
