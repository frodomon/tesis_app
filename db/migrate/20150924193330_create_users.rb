class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name
      t.string :lastName
      t.references :ubigeo, index: true, foreign_key: true
      t.date :birthDate
      t.string :genre, :limit =>1
      t.string :email, index: true, unique: true
      t.string :phone
      t.string :mobile
      t.string :alias
      t.string :password
      t.date :dueDate
      t.string :status, :limit =>1
      t.references :profile, index: true, foreign_key: true
      t.references :budget, index: true, foreign_key: true

      t.timestamps
    end
  end
  def down
      drop_table :users
  end
end
