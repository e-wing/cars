class CreateSampleColors < ActiveRecord::Migration
  def change
    create_table :sample_colors do |t|
    	t.references :car_model
  		t.string :text
			t.string :gloss
      t.timestamps null: false
    end
  end
end
