class CreateFinnancialProductTypes < ActiveRecord::Migration
  def change
    create_table :finnancial_product_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
