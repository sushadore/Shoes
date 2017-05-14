class ChangePriceDataTypeBrandsTable < ActiveRecord::Migration[5.1]
  def change
    change_column :brands, :price, :decimal, precision: 10, scale: 2
  end
end
