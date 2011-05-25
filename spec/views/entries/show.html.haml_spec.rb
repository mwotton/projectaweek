require 'spec_helper'

describe "entries/show.html.haml" do
  before(:each) do
    @entry = assign(:entry, stub_model(Entry,
      :link => "MyText",
      :references => "",
      :references => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
