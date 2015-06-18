require 'rails_helper'

RSpec.describe "car_models/new", :type => :view do
  before(:each) do
    assign(:car_model, CarModel.new())
  end

  it "renders new car_model form" do
    render

    assert_select "form[action=?][method=?]", car_models_path, "post" do
    end
  end
end
