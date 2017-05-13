class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.column(:brandname, :string)
      t.column(:price, :money)
      t.timestamps
    end
    create_table :brands_stores do |t|
      t.column(:brand_id, :integer)
      t.column(:store_id, :integer)
      t.timestamps
    end
    create_table :stores do |t|
      t.column(:store, :varchar)
      t.timestamps
    end
  end
end
