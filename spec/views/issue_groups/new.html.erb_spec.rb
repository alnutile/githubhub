require 'spec_helper'

describe "issue_groups/new" do
  before(:each) do
    assign(:issue_group, stub_model(IssueGroup,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new issue_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", issue_groups_path, "post" do
      assert_select "input#issue_group_title[name=?]", "issue_group[title]"
      assert_select "textarea#issue_group_description[name=?]", "issue_group[description]"
    end
  end
end
