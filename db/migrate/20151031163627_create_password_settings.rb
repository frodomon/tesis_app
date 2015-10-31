class CreatePasswordSettings < ActiveRecord::Migration
  def change
    create_table :password_settings do |t|
      t.integer :minLength
      t.integer :minLetters
      t.integer :minNumbers
      t.integer :duration
      t.integer :maxLoginFails

      t.timestamps
    end
  end
end
