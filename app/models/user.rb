class User < ApplicationRecord
    has_one :detail
    belongs_to :cart
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
end
