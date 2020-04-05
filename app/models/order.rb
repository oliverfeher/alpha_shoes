class Order < ApplicationRecord
    has_many :carts_shoes
    has_one :user
end