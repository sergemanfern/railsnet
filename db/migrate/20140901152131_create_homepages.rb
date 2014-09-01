class CreateHomepages < ActiveRecord::Migration
  def change
    create_table :homepages do |t|
      t.string :name
      t.string :surname
      t.string :birthday
      t.string :status
      t.string :about

      t.timestamps
    end
  end
end
