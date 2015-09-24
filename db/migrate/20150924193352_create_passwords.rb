class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.string :password
      t.date :dueDate

      t.timestamps
    end
  end
end
