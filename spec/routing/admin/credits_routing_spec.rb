require "rails_helper"

RSpec.describe Admin::CreditsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/credits").to route_to("admin/credits#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/credits/new").to route_to("admin/credits#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/credits/1").to route_to("admin/credits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/credits/1/edit").to route_to("admin/credits#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/credits").to route_to("admin/credits#create")
    end

    it "routes to #update" do
      expect(:put => "/admin/credits/1").to route_to("admin/credits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/credits/1").to route_to("admin/credits#destroy", :id => "1")
    end

  end
end
