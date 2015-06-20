require 'rails_helper'

RSpec.describe "finishes/index", :type => :view do
  before(:each) do
    assign(:finishes, [
      Finish.create!(),
      Finish.create!()
    ])
  end

  it "renders a list of finishes" do
    render
  end
end
