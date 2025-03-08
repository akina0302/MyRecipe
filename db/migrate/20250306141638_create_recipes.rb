class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :name,          null: false
      t.text :procedure       
      t.text :url,             null: false
      t.references :user,      foreign_key: true , null: false
      t.timestamps
    end
  end
end
