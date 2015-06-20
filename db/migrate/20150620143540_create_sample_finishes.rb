class CreateSampleFinishes < ActiveRecord::Migration
  def change
    create_table :samplefinishes do |t|
			t.references :sample_color
  	  t.string :text
      t.timestamps null: false
    end
  end
end
