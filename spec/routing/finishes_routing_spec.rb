require "rails_helper"

RSpec.describe FinishesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/finishes").to route_to("finishes#index")
    end

    it "routes to #new" do
      expect(:get => "/finishes/new").to route_to("finishes#new")
    end

    it "routes to #show" do
      expect(:get => "/finishes/1").to route_to("finishes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/finishes/1/edit").to route_to("finishes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/finishes").to route_to("finishes#create")
    end

    it "routes to #update" do
      expect(:put => "/finishes/1").to route_to("finishes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/finishes/1").to route_to("finishes#destroy", :id => "1")
    end

  end
end
