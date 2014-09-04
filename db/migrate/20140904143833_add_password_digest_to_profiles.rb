class AddPasswordDigestToProfiles < ActiveRecord::Migration
  def up
    add_column "profiles", "password_digest", :string
    remove_column "profiles", "password"
  end

  def down
  	remove_column "profiles", "password_digest"
    add_column "profiles", "password", :string
  end 

end
