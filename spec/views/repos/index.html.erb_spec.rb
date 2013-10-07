require 'spec_helper'

describe "repos/index" do
  before(:each) do
    assign(:repos, [
      stub_model(Repo,
        :name => "Name",
        :fullname => "Fullname",
        :url => "Url"
      ),
      stub_model(Repo,
        :name => "Name",
        :fullname => "Fullname",
        :url => "Url"
      )
    ])
  end

  it "renders a list of repos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fullname".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
