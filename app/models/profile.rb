class Profile < ActiveRecord::Base
  include PublicActivity::Model
  tracked
  has_one :friendlist
end
