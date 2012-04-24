class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :name, :email, :password, :password_confirmation
  
  validates_uniqueness_of :email, :on => :create, :message => "This email address is already in use"
  validates_uniqueness_of :name, :on => :create, :message => "Someone is already using your name"
end
