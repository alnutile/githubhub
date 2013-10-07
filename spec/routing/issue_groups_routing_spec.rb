require "spec_helper"

describe IssueGroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/issue_groups").should route_to("issue_groups#index")
    end

    it "routes to #new" do
      get("/issue_groups/new").should route_to("issue_groups#new")
    end

    it "routes to #show" do
      get("/issue_groups/1").should route_to("issue_groups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/issue_groups/1/edit").should route_to("issue_groups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/issue_groups").should route_to("issue_groups#create")
    end

    it "routes to #update" do
      put("/issue_groups/1").should route_to("issue_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/issue_groups/1").should route_to("issue_groups#destroy", :id => "1")
    end

  end
end
