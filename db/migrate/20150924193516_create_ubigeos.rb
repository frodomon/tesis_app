class CreateUbigeos < ActiveRecord::Migration
  def change
    create_table :ubigeos do |t|
      t.string :name
      t.integer :parent_id

      t.timestamps
    end
  end
end
