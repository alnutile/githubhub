require 'spec_helper'

describe "issue_groups/edit" do
  before(:each) do
    @issue_group = assign(:issue_group, stub_model(IssueGroup,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit issue_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", issue_group_path(@issue_group), "post" do
      assert_select "input#issue_group_title[name=?]", "issue_group[title]"
      assert_select "textarea#issue_group_description[name=?]", "issue_group[description]"
    end
  end
end
