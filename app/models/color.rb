class Color < ActiveRecord::Base
			belongs_to :car
			has_many :finishes, dependent: :destroy

				 accepts_nested_attributes_for :finishes, allow_destroy: true


end
