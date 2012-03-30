class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true 
  validates :password, presence: true, confirmation:true
  validates :password_confirmation, presence: true
  has_secure_password
end
