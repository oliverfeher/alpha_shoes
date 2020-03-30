class Cart < ApplicationRecord
    has_many :carts_shoes
    has_many :shoes, through: :carts_shoes, dependent: :nullify
    belongs_to :user
end