class Group < ActiveRecord::Base
  
  attr_accessible :leader_id
  
  belongs_to :follower, :foreign_key => "follower_id", :class_name => "User"
  belongs_to :leader, :foreign_key => "leader_id", :class_name => "User"
  
  validates :follower_id, :presence => true
  validates :leader_id, :presence => true
end