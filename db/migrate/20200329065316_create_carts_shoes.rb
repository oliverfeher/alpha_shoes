class CreateCartsShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :carts_shoes do |t|
      t.integer :cart_id
      t.integer :shoe_id
    end
  end
end
