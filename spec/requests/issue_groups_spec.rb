require 'spec_helper'

describe "IssueGroups" do
  describe "GET /issue_groups" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get issue_groups_path
      response.status.should be(200)
    end
  end
end
