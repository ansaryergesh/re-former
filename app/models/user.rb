class User < ApplicationRecord
    validates :username, length: {minimum:5, maximum:25}
    validates :email, presence: true, length: {minimum:5}
    validates :password, presence: true, length: {minimum: 5}
end
