class Shoe < ApplicationRecord
    has_many :carts_shoes
    has_many :carts, through: :carts_shoes

    has_many :reviews
    accepts_nested_attributes_for :reviews
end