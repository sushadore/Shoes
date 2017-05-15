class AddStoreUniqueIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :stores, :store, unique: true
  end
end
