class Route < ActiveRecord::Base
  belongs_to :area
  belongs_to :rating
end
