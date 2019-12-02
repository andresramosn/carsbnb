class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :price
      t.string :modelbrand
      t.string :adress
      t.string :description
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
