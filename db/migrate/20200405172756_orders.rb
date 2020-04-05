class Orders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :total_amount
      t.timestamp :created_at
    end
  end
end
