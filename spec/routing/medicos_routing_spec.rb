require "spec_helper"

describe MedicosController do
  describe "routing" do

    it "routes to #index" do
      get("/medicos").should route_to("medicos#index")
    end

    it "routes to #new" do
      get("/medicos/new").should route_to("medicos#new")
    end

    it "routes to #show" do
      get("/medicos/1").should route_to("medicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/medicos/1/edit").should route_to("medicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/medicos").should route_to("medicos#create")
    end

    it "routes to #update" do
      put("/medicos/1").should route_to("medicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/medicos/1").should route_to("medicos#destroy", :id => "1")
    end

  end
end
