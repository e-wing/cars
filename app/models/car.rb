class Car < ActiveRecord::Base
	has_many :colors, dependent: :destroy
	belongs_to :car_model

	 accepts_nested_attributes_for :colors, allow_destroy: true

end
