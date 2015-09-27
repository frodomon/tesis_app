class CreateUbigeos < ActiveRecord::Migration
  def change
    create_table :ubigeos, id: false do |t|
      t.belongs_to :user, index: true
      t.integer :ubigeo_id
      t.string :name
      t.integer :parent_id

      t.timestamps
    end
  end
end
