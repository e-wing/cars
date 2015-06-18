class CreateCarModels < ActiveRecord::Migration 
 def change
    create_table :car_models do |t|

			t.string :car_model_name

      t.timestamps null: false

    end
  end
end
