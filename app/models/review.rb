class Review < ApplicationRecord
    belongs_to :shoe
    belongs_to :user

    validates :rating, presence: true
    validates :content, presence: true
end
