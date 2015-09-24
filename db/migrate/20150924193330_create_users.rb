class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastName
      t.integer :ubigeo_id
      t.date :birthDate
      t.integer :genre
      t.string :email
      t.string :phone
      t.string :mobile
      t.string :alias
      t.float :balance

      t.timestamps
    end
  end
end
