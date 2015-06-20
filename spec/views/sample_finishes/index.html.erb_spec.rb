require 'rails_helper'

RSpec.describe "sample_finishes/index", :type => :view do
  before(:each) do
    assign(:sample_finishes, [
      SampleFinish.create!(),
      SampleFinish.create!()
    ])
  end

  it "renders a list of sample_finishes" do
    render
  end
end
