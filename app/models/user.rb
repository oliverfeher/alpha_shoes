class User < ApplicationRecord
    has_one :detail
    has_one :cart
    has_many :reviews
    has_many :orders
    has_secure_password
    validates :email, presence: true, uniqueness: true
end
