class CreateRecipeCookingdates < ActiveRecord::Migration[7.1]
  def change
    create_table :recipe_cookingdates do |t|
      t.references :recipe,      foreign_key: true , null: false
      t.references :cooking_date,      foreign_key: true , null: false
      t.timestamps
    end
  end
end
