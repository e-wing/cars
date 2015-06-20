require 'rails_helper'

RSpec.describe "finishes/new", :type => :view do
  before(:each) do
    assign(:finish, Finish.new())
  end

  it "renders new finish form" do
    render

    assert_select "form[action=?][method=?]", finishes_path, "post" do
    end
  end
end
