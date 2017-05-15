class AddStoreColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :store, :varchar
    add_column :brands, :brandname, :varchar
  end
end
