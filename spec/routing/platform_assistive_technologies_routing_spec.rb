require "rails_helper"

RSpec.describe PlatformAssistiveTechnologiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platform_assistive_technologies").to route_to("platform_assistive_technologies#index")
    end

    it "routes to #new" do
      expect(:get => "/platform_assistive_technologies/new").to route_to("platform_assistive_technologies#new")
    end

    it "routes to #show" do
      expect(:get => "/platform_assistive_technologies/1").to route_to("platform_assistive_technologies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/platform_assistive_technologies/1/edit").to route_to("platform_assistive_technologies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/platform_assistive_technologies").to route_to("platform_assistive_technologies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/platform_assistive_technologies/1").to route_to("platform_assistive_technologies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/platform_assistive_technologies/1").to route_to("platform_assistive_technologies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platform_assistive_technologies/1").to route_to("platform_assistive_technologies#destroy", :id => "1")
    end

  end
end
