class Profile < ActiveRecord::Base
  has_secure_password
  include PublicActivity::Model
  tracked
  scope :sorted, lambda {order("profiles.id ASC")}
  validates_uniqueness_of :login
end
