class CreateContrasenhas < ActiveRecord::Migration
  def change
    create_table :contrasenhas do |t|
      t.string :contrasenha
      t.date :fecCreacion
      t.date :fecVencimiento

      t.timestamps
    end
  end
end
