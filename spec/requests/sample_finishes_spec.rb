require 'rails_helper'

RSpec.describe "SampleFinishes", :type => :request do
  describe "GET /sample_finishes" do
    it "works! (now write some real specs)" do
      get sample_finishes_path
      expect(response).to have_http_status(200)
    end
  end
end
