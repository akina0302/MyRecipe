class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.text :category,      null: false
      t.references :recipe,  foreign_key: true , null: false
      t.timestamps
    end
  end
end
