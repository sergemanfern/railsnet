class CreateFriendlists < ActiveRecord::Migration
  def change
    create_table :friendlists do |t|
      t.string :name
      t.string :surname
      t.string :status

      t.timestamps
    end
  end
end
