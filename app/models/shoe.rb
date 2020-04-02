class Shoe < ApplicationRecord
    has_many :carts_shoes
    has_many :carts, through: :carts_shoes

    has_many :reviews
    accepts_nested_attributes_for :reviews

    scope :list_by_price_asc, -> { order(price: :asc) }
    scope :list_by_price_desc, -> { order(price: :desc) }
end