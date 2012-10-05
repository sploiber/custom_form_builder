class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model_name
      t.string :serial

      t.timestamps
    end
  end
end
