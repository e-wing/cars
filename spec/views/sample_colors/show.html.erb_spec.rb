require 'rails_helper'

RSpec.describe "sample_colors/show", :type => :view do
  before(:each) do
    @sample_color = assign(:sample_color, SampleColor.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
