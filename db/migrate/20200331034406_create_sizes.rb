class CreateSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :sizes do |t|
      t.integer :shoe_size
    end

    add_column :carts_shoes, :size_id, :integer
  end
end
