class CreateTableUserAndPasswords < ActiveRecord::Migration
  def self.up
    create_table :users_passwords, id: false do |t|
      t.references :user
      t.references :password
  end
  def self.down
  	drop_table :users_passwords
  end
end
