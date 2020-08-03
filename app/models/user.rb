class User < ApplicationRecord
  validates_presence_of :email, :password, :password_confirmation
  validates :email, uniqueness: true
  validates_confirmation_of :password

end 