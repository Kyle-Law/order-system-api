class CreateTyres < ActiveRecord::Migration[6.0]
  def change
    create_table :tyres do |t|
      t.integer :code
      t.string :brand
      t.integer :year
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
