class CreateShoesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :brand
      t.string :type
      t.integer :price
      t.string :review_id
      t.string :detail1
      t.string :detail2
      t.string :detail3
      t.string :detail4
      t.string :pic_url
    end
  end
end
