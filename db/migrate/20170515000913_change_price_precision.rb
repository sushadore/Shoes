class ChangePricePrecision < ActiveRecord::Migration[5.1]
  def change
    change_column :brands, :price, :decimal, precision: 100, scale: 2
  end
end
