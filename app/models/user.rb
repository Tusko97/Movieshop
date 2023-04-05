class User < ApplicationRecord
    has_many: movies

    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :password, length: {minimum: 6}, if: -> { new_record? || !password.nil?}
    validates :gender, presence: true
end 
