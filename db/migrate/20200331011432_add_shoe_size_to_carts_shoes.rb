class AddShoeSizeToCartsShoes < ActiveRecord::Migration[6.0]
  def change
    add_column :carts_shoes, :shoe_size, :integer
  end
end
