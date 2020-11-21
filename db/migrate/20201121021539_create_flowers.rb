class CreateFlowers < ActiveRecord::Migration[6.0]
  def change
    create_table :flowers do |t|
      t.string :species
      t.string :color
      t.integer :price
      t.integer :sell

      t.timestamps
    end
  end
end
