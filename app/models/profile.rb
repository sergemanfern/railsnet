class Profile < ActiveRecord::Base
  has_secure_password
  has_one :user
  include PublicActivity::Model
  tracked
  scope :sorted, lambda { order("profiles.id ASC")}
  scope :search,->(keyword){ where('keywords LIKE ?',"%#{keyword.downcase}%") if keyword.present?}
  validates_uniqueness_of :login
  before_save :set_keywords

  # def self.search(keyword)
  # 	if keyword.present?
  # 		where(name: keyword)
  # 	else 
  # 		all
  # 	end
  # end

  protected
  	def set_keywords
  		self.keywords=[name, surname, about, login, birth].map {|p| p.downcase}.join(' ')
  	end




end 
