require "spec_helper"

describe IssueProgessesController do
  describe "routing" do

    it "routes to #index" do
      get("/issue_progesses").should route_to("issue_progesses#index")
    end

    it "routes to #new" do
      get("/issue_progesses/new").should route_to("issue_progesses#new")
    end

    it "routes to #show" do
      get("/issue_progesses/1").should route_to("issue_progesses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/issue_progesses/1/edit").should route_to("issue_progesses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/issue_progesses").should route_to("issue_progesses#create")
    end

    it "routes to #update" do
      put("/issue_progesses/1").should route_to("issue_progesses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/issue_progesses/1").should route_to("issue_progesses#destroy", :id => "1")
    end

  end
end
