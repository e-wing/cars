require 'rails_helper'

RSpec.describe "finishes/edit", :type => :view do
  before(:each) do
    @finish = assign(:finish, Finish.create!())
  end

  it "renders the edit finish form" do
    render

    assert_select "form[action=?][method=?]", finish_path(@finish), "post" do
    end
  end
end
