class ChangeDataTypeFromField < ActiveRecord::Migration[5.0]
  def self.up
    change_table :food_items do |t|
      t.change :price, :string
    end
  end

  def self.down
    change_table :food_items do |t|
      t.change :price, :decimal, precision: 5, scale: 2
    end
  end
end
