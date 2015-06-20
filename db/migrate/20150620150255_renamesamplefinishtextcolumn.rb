class Renamesamplefinishtextcolumn < ActiveRecord::Migration
  def change
  	rename_column :sample_finishes, :text, :value_one
  end
end
