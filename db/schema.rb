# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_05_172756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
  end

  create_table "carts_shoes", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "shoe_id"
    t.integer "size_id"
  end

  create_table "details", force: :cascade do |t|
    t.integer "user_id"
    t.string "full_name"
    t.string "address"
    t.string "city"
    t.string "state"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "total_amount"
    t.datetime "created_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "content"
    t.integer "user_id"
    t.integer "shoe_id"
  end

  create_table "shoes", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.integer "price"
    t.string "detail1"
    t.string "detail2"
    t.string "detail3"
    t.string "detail4"
    t.string "pic_url"
  end

  create_table "sizes", force: :cascade do |t|
    t.integer "shoe_size"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
