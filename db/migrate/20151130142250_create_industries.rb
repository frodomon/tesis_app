class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :name
      t.integer :parent_id

      t.timestamps
    end
  end
end
