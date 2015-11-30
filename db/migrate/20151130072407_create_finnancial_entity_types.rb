class CreateFinnancialEntityTypes < ActiveRecord::Migration
  def change
    create_table :finnancial_entity_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
