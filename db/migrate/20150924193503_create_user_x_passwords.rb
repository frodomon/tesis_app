class CreateUserXPasswords < ActiveRecord::Migration
  def change
    create_table :user_x_passwords do |t|
      t.integer :user_id
      t.integer :password_id

      t.timestamps
    end
  end
end
