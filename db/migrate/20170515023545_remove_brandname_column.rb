class RemoveBrandnameColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :brands, :brandname
  end
end
