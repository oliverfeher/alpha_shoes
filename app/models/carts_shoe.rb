class CartsShoe < ApplicationRecord
    belongs_to :cart
    belongs_to :shoe
end