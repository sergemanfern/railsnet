class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.string :profile_id
      t.string :integer
      t.string :friend_id
      t.string :integer

      t.timestamps
    end
  end
end
