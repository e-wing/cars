class Renamesamplefinishes < ActiveRecord::Migration
  def change
  	rename_table :samplefinishes, :sample_finishes
  end
end
