class AddFriendlistIdToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :friendlist_id, :integer
  end
end
