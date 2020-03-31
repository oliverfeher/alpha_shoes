class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.integer :user_id
    end

    create_table :shoes_reviews do |t|
      t.integer :shoe_id
      t.integer :review_id
    end
  end
end
