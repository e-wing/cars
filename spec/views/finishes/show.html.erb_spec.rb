require 'rails_helper'

RSpec.describe "finishes/show", :type => :view do
  before(:each) do
    @finish = assign(:finish, Finish.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
