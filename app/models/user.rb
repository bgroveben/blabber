class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :email
  has_many :blabs
end
