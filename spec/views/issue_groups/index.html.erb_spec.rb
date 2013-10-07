require 'spec_helper'

describe "issue_groups/index" do
  before(:each) do
    assign(:issue_groups, [
      stub_model(IssueGroup,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(IssueGroup,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of issue_groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
