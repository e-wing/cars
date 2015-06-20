class Renameglosscolumn < ActiveRecord::Migration
  def change
  	rename_column :colors, :gloss, :value_two
  	rename_column :colors, :text, :value_one
  end
end
