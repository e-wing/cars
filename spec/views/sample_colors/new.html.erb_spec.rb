require 'rails_helper'

RSpec.describe "sample_colors/new", :type => :view do
  before(:each) do
    assign(:sample_color, SampleColor.new())
  end

  it "renders new sample_color form" do
    render

    assert_select "form[action=?][method=?]", sample_colors_path, "post" do
    end
  end
end
