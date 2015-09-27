class CreateUserAndPasswords < ActiveRecord::Migration
  def change
    create_table :user_passwords, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :password, index: true
    end
  end
end
