require 'rails_helper'

RSpec.describe "car_models/index", :type => :view do
  before(:each) do
    assign(:car_models, [
      CarModel.create!(),
      CarModel.create!()
    ])
  end

  it "renders a list of car_models" do
    render
  end
end
