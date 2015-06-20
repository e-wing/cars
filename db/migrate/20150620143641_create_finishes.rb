class CreateFinishes < ActiveRecord::Migration
  def change
    create_table :finishes do |t|
      t.references :color
  	  t.string :value_one
      t.timestamps null: false
    end
  end
end
