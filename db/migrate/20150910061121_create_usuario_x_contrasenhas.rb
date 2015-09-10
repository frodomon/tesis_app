class CreateUsuarioXContrasenhas < ActiveRecord::Migration
  def change
    create_table :usuario_x_contrasenhas do |t|
      t.integer :usuario_id
      t.integer :contrasenha_id

      t.timestamps
    end
  end
end
