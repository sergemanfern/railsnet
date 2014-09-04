class Profile < ActiveRecord::Base
  include PublicActivity::Model
  tracked

end
