require 'spec_helper'

describe "rounds/edit.html.haml" do
  before(:each) do
    @round = assign(:round, stub_model(Round))
  end

  it "renders the edit round form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rounds_path(@round), :method => "post" do
    end
  end
end
