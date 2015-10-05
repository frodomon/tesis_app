class CreateTableUserAndPasswords < ActiveRecord::Migration
  def change
    create_table :passwords_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :password, index: true
  	end
  end

  def self.down
  	drop_table :passwords_users
  end
end
