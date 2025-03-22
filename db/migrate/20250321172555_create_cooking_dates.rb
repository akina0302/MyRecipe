class CreateCookingDates < ActiveRecord::Migration[7.1]
  def change
    create_table :cooking_dates do |t|
      t.datetime :start_time,    null: false
      t.references :user,      foreign_key: true , null: false
      t.timestamps
    end
  end
end
