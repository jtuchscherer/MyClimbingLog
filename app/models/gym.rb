class Gym < ActiveRecord::Base
  has_many :areas, dependent: :destroy
  has_many :routes, through: :areas
  has_many :ratings, dependent: :destroy
end
