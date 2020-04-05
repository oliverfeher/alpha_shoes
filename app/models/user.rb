class User < ApplicationRecord
    has_one :detail
    has_one :cart
    has_many :reviews
    belongs_to :order
    has_secure_password
    validates :email, presence: true, uniqueness: true
end
