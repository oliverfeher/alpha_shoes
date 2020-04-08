class CartsShoe < ApplicationRecord
    belongs_to :cart
    belongs_to :shoe
    belongs_to :order, optional: true
    belongs_to :size
end