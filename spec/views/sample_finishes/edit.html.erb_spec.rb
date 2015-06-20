require 'rails_helper'

RSpec.describe "sample_finishes/edit", :type => :view do
  before(:each) do
    @sample_finish = assign(:sample_finish, SampleFinish.create!())
  end

  it "renders the edit sample_finish form" do
    render

    assert_select "form[action=?][method=?]", sample_finish_path(@sample_finish), "post" do
    end
  end
end
