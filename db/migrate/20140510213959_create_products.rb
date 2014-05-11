class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :category_id
      t.string :description
      t.string :product_code
      t.boolean :available

      t.timestamps
    end
  end
end
