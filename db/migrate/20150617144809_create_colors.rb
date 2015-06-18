class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.references :car
  	  t.string :text
	    t.string :gloss
      t.timestamps null: false
    end
  end
end
