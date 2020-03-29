class Cart < ApplicationRecord
    has_and_belongs_to_many :shoes
    belongs_to :user
end