require "rails_helper"

RSpec.describe SomthingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/somthings").to route_to("somthings#index")
    end

    it "routes to #new" do
      expect(:get => "/somthings/new").to route_to("somthings#new")
    end

    it "routes to #show" do
      expect(:get => "/somthings/1").to route_to("somthings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/somthings/1/edit").to route_to("somthings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/somthings").to route_to("somthings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/somthings/1").to route_to("somthings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/somthings/1").to route_to("somthings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/somthings/1").to route_to("somthings#destroy", :id => "1")
    end

  end
end
