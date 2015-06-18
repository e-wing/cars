class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
			t.references :car_model
  		t.string :car_name
      t.timestamps null: false
    end
  end
end
