class Order < ApplicationRecord
    has_many :carts_shoes
    belongs_to :user
end