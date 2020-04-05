class Orders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :carts_shoes_id
      t.integer :total_amount
    end
  end
end
