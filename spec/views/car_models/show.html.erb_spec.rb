require 'rails_helper'

RSpec.describe "car_models/show", :type => :view do
  before(:each) do
    @car_model = assign(:car_model, CarModel.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
