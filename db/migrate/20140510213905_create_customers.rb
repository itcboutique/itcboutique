class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :title
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :address1
      t.string :address2
      t.string :address3
      t.boolean :admin

      t.timestamps
    end
  end
end
