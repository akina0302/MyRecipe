class CreateRecipeMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :recipe_materials do |t|
      t.references :recipe,   null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.timestamps
    end
  end
end
