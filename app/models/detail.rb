class Detail < ApplicationRecord
    belongs_to :user
    validates :full_name, presence: true
    validates :address, presence: true
    validates :city, presence: true
    validates :state, presence: true
end