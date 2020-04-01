class Review < ApplicationRecord
    has_many :shoes_reviews
    has_many :shoes, through: :shoes_reviews, dependent: :nullify
    belongs_to :user
    accepts_nested_attributes_for :user

    validates :rating, presence: true
    validates :content, presence: true
end
