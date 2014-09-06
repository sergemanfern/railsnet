class Profile < ActiveRecord::Base
  has_secure_password
  include PublicActivity::Model
  tracked
  scope :sorted, lambda {order("profiles.id ASC")}
  scope :search,->(keyword){where(name: keyword) if keyword.present?}
  validates_uniqueness_of :login

  # def self.search(keyword)
  # 	if keyword.present?
  # 		where(name: keyword)
  # 	else 
  # 		all
  # 	end
  # end


end
