class RemoveStoreColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :stores, :store
  end
end
