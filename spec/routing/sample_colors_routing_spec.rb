require "rails_helper"

RSpec.describe SampleColorsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sample_colors").to route_to("sample_colors#index")
    end

    it "routes to #new" do
      expect(:get => "/sample_colors/new").to route_to("sample_colors#new")
    end

    it "routes to #show" do
      expect(:get => "/sample_colors/1").to route_to("sample_colors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sample_colors/1/edit").to route_to("sample_colors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sample_colors").to route_to("sample_colors#create")
    end

    it "routes to #update" do
      expect(:put => "/sample_colors/1").to route_to("sample_colors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sample_colors/1").to route_to("sample_colors#destroy", :id => "1")
    end

  end
end
