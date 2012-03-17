class UserFeedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :route
  belongs_to :rating
  
  validates_uniqueness_of :user_id, :scope => :route_id, :message => "You already rated this route"
end
