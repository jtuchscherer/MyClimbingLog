class Comment < ActiveRecord::Base
  
  attr_accessible :user_id, :ip_address, :route_id, :title, :content
  
  belongs_to :user
  belongs_to :route
  
  validate :ip_address_or_user_id_present
  validates :title, :presence => true
  validates :route_id, :presence => true
  validates :content, :length => { :maximum => 1000,
    :too_long => "%{count} characters is the maximum allowed" }

  def ip_address_or_user_id_present
    if ip_address.blank? && user_id.blank?
      errors.add(:user_id, "cannot be empty if IP address is not specified")
      errors.add(:ip_address, "cannot be empty if User is not specified")
    end
  end
    
end
