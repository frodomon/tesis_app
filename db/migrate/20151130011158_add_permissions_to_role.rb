class AddPermissionsToRole < ActiveRecord::Migration
  def change
    create_table :permissions_roles, id: false do |t|
      t.belongs_to :permission, index: true, foreign_key: true
      t.belongs_to :role, index: true, foreign_key: true
  	end
  end

  def self.down
  	drop_table :permissions_roles
  end
end
