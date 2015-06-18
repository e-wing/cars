require 'rails_helper'

RSpec.describe "sample_colors/index", :type => :view do
  before(:each) do
    assign(:sample_colors, [
      SampleColor.create!(),
      SampleColor.create!()
    ])
  end

  it "renders a list of sample_colors" do
    render
  end
end
