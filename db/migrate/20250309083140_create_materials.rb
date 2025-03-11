class CreateMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :materials do |t|
      t.text :material_name,  null: false
      t.timestamps
    end
  end
end
