require 'rails_helper'

RSpec.describe "sample_colors/edit", :type => :view do
  before(:each) do
    @sample_color = assign(:sample_color, SampleColor.create!())
  end

  it "renders the edit sample_color form" do
    render

    assert_select "form[action=?][method=?]", sample_color_path(@sample_color), "post" do
    end
  end
end
