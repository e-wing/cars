require 'rails_helper'

RSpec.describe "SampleColors", :type => :request do
  describe "GET /sample_colors" do
    it "works! (now write some real specs)" do
      get sample_colors_path
      expect(response).to have_http_status(200)
    end
  end
end
