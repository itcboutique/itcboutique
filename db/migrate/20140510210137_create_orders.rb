class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user_id
      t.string :order_date
      t.string :status
      t.string :order_no
      t.float :shipping_cost
      t.string :pay_type

      t.timestamps
    end
  end
end
