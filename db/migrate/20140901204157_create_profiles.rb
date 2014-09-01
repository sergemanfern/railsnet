class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :login
      t.string :password
      t.string :name
      t.string :surname
      t.string :birth
      t.string :status
      t.string :about

      t.timestamps
    end
  end
end
