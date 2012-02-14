require "spec_helper"

describe EspecialidadesController do
  describe "routing" do

    it "routes to #index" do
      get("/especialidades").should route_to("especialidades#index")
    end

    it "routes to #new" do
      get("/especialidades/new").should route_to("especialidades#new")
    end

    it "routes to #show" do
      get("/especialidades/1").should route_to("especialidades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/especialidades/1/edit").should route_to("especialidades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/especialidades").should route_to("especialidades#create")
    end

    it "routes to #update" do
      put("/especialidades/1").should route_to("especialidades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/especialidades/1").should route_to("especialidades#destroy", :id => "1")
    end

  end
end
