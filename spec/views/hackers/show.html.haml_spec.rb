require 'spec_helper'

describe "hackers/show.html.haml" do
  before(:each) do
    @hacker = assign(:hacker, stub_model(Hacker,
      :twitter => "Twitter"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Twitter/)
  end
end
