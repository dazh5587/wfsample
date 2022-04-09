class User < ApplicationRecord
    has_secure_password
    validates :name,  presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 }
    validates :password, presence: true, length: { minimum: 6 }
end
