# frozen_string_literal: true

class User < ApplicationRecord
  before_save { email.downcase! }
  validates :username, presence: true, uniqueness: true, length: { minimum: 5, maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { minimum: 5 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 5 }
end
