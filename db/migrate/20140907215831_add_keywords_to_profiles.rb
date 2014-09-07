class AddKeywordsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :keywords, :text
  end
end
