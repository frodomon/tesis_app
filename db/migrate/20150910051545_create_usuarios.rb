class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apePaterno
      t.string :apeMaterno
      t.integer :distrito_id
      t.date :fecNac
      t.integer :sexo
      t.string :email
      t.string :telFijo
      t.string :telMovil
      t.string :alias
      t.float :saldo

      t.timestamps
    end
  end
end
