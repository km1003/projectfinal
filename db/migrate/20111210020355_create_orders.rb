class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :order_number
      t.integer :user_id
      t.string :cpu
      t.string :ram
      t.string :video
      t.string :hdd

      t.timestamps
    end
    
    add_index :orders, :user_id
  end
  
  def self.down
    drop_table :microposts
  end
end
