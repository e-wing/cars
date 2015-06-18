class CarModel < ActiveRecord::Base
		has_many :sample_colors, dependent: :destroy

		has_many :cars, dependent: :destroy
end
