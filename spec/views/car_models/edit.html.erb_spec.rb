require 'rails_helper'

RSpec.describe "car_models/edit", :type => :view do
  before(:each) do
    @car_model = assign(:car_model, CarModel.create!())
  end

  it "renders the edit car_model form" do
    render

    assert_select "form[action=?][method=?]", car_model_path(@car_model), "post" do
    end
  end
end
