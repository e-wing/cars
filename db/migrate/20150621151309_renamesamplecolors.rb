class Renamesamplecolors < ActiveRecord::Migration
  def change
  	rename_column :sample_colors, :text, :value_one
  	rename_column :sample_colors, :gloss, :value_two

  end
end
