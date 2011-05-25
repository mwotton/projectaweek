require 'spec_helper'

describe "rounds/new.html.haml" do
  before(:each) do
    assign(:round, stub_model(Round).as_new_record)
  end

  it "renders new round form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rounds_path, :method => "post" do
    end
  end
end
