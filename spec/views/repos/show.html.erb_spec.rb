require 'spec_helper'

describe "repos/show" do
  before(:each) do
    @repo = assign(:repo, stub_model(Repo,
      :name => "Name",
      :fullname => "Fullname",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Fullname/)
    rendered.should match(/Url/)
  end
end
