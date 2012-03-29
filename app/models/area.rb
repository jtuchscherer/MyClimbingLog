class Area < ActiveRecord::Base
  
  attr_accessible :gym_id, :name, :description
  
  belongs_to :gym
  has_many :routes, dependent: :destroy
  
  validates :name, :presence => true
  validates :gym_id, :presence => true
  validates :description, :length => { :maximum => 1000,
    :too_long => "%{count} characters is the maximum allowed" }
  validates_associated :routes
end
