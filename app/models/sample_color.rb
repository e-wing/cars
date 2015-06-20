class SampleColor < ActiveRecord::Base
			belongs_to :car_model
		  has_many :sample_finishes, dependent: :destroy

end
