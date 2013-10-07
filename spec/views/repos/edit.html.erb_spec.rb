require 'spec_helper'

describe "repos/edit" do
  before(:each) do
    @repo = assign(:repo, stub_model(Repo,
      :name => "MyString",
      :fullname => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit repo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", repo_path(@repo), "post" do
      assert_select "input#repo_name[name=?]", "repo[name]"
      assert_select "input#repo_fullname[name=?]", "repo[fullname]"
      assert_select "input#repo_url[name=?]", "repo[url]"
    end
  end
end
