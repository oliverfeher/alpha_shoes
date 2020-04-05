class CartsShoe < ApplicationRecord
    belongs_to :cart
    belongs_to :shoe
    belongs_to :order
    has_one :size
end