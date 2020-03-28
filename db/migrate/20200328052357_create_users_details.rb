class CreateUsersDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.integer :user_id
      t.string :full_name
      t.string :address
      t.string :city
      t.string :state
    end
  end
end
