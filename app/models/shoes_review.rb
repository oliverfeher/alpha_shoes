class ShoesReview < ApplicationRecord
    belongs_to :shoe
    belongs_to :review
end