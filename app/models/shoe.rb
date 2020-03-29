class Shoe < ApplicationRecord
    has_many :reviews
    belongs_to :cart
end