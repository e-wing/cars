require 'rails_helper'

RSpec.describe "sample_finishes/new", :type => :view do
  before(:each) do
    assign(:sample_finish, SampleFinish.new())
  end

  it "renders new sample_finish form" do
    render

    assert_select "form[action=?][method=?]", sample_finishes_path, "post" do
    end
  end
end
