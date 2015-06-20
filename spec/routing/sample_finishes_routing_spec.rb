require "rails_helper"

RSpec.describe SampleFinishesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sample_finishes").to route_to("sample_finishes#index")
    end

    it "routes to #new" do
      expect(:get => "/sample_finishes/new").to route_to("sample_finishes#new")
    end

    it "routes to #show" do
      expect(:get => "/sample_finishes/1").to route_to("sample_finishes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sample_finishes/1/edit").to route_to("sample_finishes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sample_finishes").to route_to("sample_finishes#create")
    end

    it "routes to #update" do
      expect(:put => "/sample_finishes/1").to route_to("sample_finishes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sample_finishes/1").to route_to("sample_finishes#destroy", :id => "1")
    end

  end
end
