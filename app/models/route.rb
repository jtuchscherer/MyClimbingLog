class Route < ActiveRecord::Base
  belongs_to :area
  belongs_to :rating
  has_many   :comments, dependent: :destroy
  has_many   :user_feedbacks, dependent: :destroy
  
  def ordinal_average_user_rating
    rating_sum = user_feedbacks.inject(0) {|sum, user_feedback| sum + user_feedback.rating.ordinal_value } 
    rating_sum/user_feedbacks.length
  end
  
  def average_user_feedback_score
    rating_sum = user_feedbacks.inject(0) {|sum, user_feedback| sum + user_feedback.score } 
    rating_sum/user_feedbacks.length
  end
end
