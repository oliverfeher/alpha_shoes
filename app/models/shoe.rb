class Shoe < ApplicationRecord
    has_many :carts_shoes
    has_many :carts, through: :carts_shoes

    has_many :shoes_reviews
    has_many :reviews, through: :shoes_reviews
end