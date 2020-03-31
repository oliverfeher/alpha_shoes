class Review < ApplicationRecord
    has_many :shoes_reviews
    has_many :shoes, through: :shoes_reviews, dependent: :nullify
    belongs_to :user
end
