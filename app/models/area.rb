class Area < ActiveRecord::Base
  belongs_to :gym
  has_many :routes, dependent: :destroy
end
