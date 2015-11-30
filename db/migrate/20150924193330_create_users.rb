class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name
      t.string :lastNamePat
      t.string :lastNameMat
      t.references :ubigeo, index: true, foreign_key: true
      t.date :birthDate
      t.string :genre, :limit =>1
      t.string :email, index: true, unique: true
      t.string :phone
      t.string :mobile
      t.string :userName
      t.string :password
      t.date :dueDate
      t.float :balancePEN
      t.float :balanceUSD
      t.float :salaryPEN
      t.float :salaryUSD
      t.string :status, :limit =>1
      t.references :role, index: true, foreign_key: true

      t.timestamps
    end
  end
  def down
      drop_table :users
  end
end
