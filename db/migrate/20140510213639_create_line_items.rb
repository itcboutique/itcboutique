class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :user_id
      t.string :product_id
      t.string :quantity
      t.float :unit_price
      t.integer :order_id
      t.string :status

      t.timestamps
    end
  end
end
