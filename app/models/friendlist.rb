class Friendlist < ActiveRecord::Base
	include PublicActivity::Model
	tracked
  belongs_to :profile
end
