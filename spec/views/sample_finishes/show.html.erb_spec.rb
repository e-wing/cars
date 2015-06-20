require 'rails_helper'

RSpec.describe "sample_finishes/show", :type => :view do
  before(:each) do
    @sample_finish = assign(:sample_finish, SampleFinish.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
