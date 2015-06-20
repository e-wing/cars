require 'rails_helper'

RSpec.describe "Finishes", :type => :request do
  describe "GET /finishes" do
    it "works! (now write some real specs)" do
      get finishes_path
      expect(response).to have_http_status(200)
    end
  end
end
