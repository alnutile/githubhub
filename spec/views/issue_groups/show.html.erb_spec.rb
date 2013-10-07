require 'spec_helper'

describe "issue_groups/show" do
  before(:each) do
    @issue_group = assign(:issue_group, stub_model(IssueGroup,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
