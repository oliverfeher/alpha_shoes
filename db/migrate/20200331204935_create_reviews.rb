class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.integer :user_id
      t.integer :shoe_id
    end
  end
end
