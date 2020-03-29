class Cart < ApplicationRecord
    has_and_belongs_to_many :shoes
    has_one :user
end