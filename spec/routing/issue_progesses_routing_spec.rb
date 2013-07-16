require "spec_helper"

describe IssueProgressesController do
  describe "routing" do

    it "routes to #index" do
      get("/issue_progresses").should route_to("issue_progresses#index")
    end

    it "routes to #new" do
      get("/issue_progresses/new").should route_to("issue_progresses#new")
    end

    it "routes to #show" do
      get("/issue_progresses/1").should route_to("issue_progresses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/issue_progresses/1/edit").should route_to("issue_progresses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/issue_progresses").should route_to("issue_progresses#create")
    end

    it "routes to #update" do
      put("/issue_progresses/1").should route_to("issue_progresses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/issue_progresses/1").should route_to("issue_progresses#destroy", :id => "1")
    end

  end
end
