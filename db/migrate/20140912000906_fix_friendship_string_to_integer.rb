class FixFriendshipStringToInteger < ActiveRecord::Migration
  def change
  	remove_column :friendships, :profile_id
  	remove_column :friendships, :integer
  	remove_column :friendships, :friend_id
  	add_column :friendships, :friend_id, :integer
	add_column :friendships, :profile_id,:integer
  end
end
