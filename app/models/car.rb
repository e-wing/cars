class Car < ActiveRecord::Base
	has_many :colors, dependent: :destroy

	belongs_to :car_model
end
