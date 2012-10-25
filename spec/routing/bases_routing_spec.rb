require "spec_helper"

describe BasesController do
  describe "routing" do

    it "routes to #index" do
      get("/bases").should route_to("bases#index")
    end

    it "routes to #new" do
      get("/bases/new").should route_to("bases#new")
    end

    it "routes to #show" do
      get("/bases/1").should route_to("bases#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bases/1/edit").should route_to("bases#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bases").should route_to("bases#create")
    end

    it "routes to #update" do
      put("/bases/1").should route_to("bases#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bases/1").should route_to("bases#destroy", :id => "1")
    end

  end
end
