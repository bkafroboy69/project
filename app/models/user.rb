class User < ActiveRecord::Base
  attr_accessible :name, :email, :username
  
  validates :name, :presence => true
end
