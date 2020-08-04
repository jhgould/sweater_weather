require 'securerandom'

class User < ApplicationRecord
  validates_presence_of :email, :password # :password_confirmation
  validates :email, uniqueness: true
  validates_presence_of :password, on: :create
  validates_confirmation_of :password

  has_secure_password

  def generate_token 
    SecureRandom.uuid
  end 
end 