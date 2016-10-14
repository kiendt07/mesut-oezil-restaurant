class CreateFoodItems < ActiveRecord::Migration[5.0]
  def change
    create_table :food_items do |t|
      t.references :section, foreign_key: true
      t.string :name
      t.string :description
      t.string :price
      t.string :img_url

      t.timestamps
    end
  end
end
