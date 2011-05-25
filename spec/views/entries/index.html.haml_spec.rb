require 'spec_helper'

describe "entries/index.html.haml" do
  before(:each) do
    assign(:entries, [
      stub_model(Entry,
        :link => "MyText",
        :references => "",
        :references => ""
      ),
      stub_model(Entry,
        :link => "MyText",
        :references => "",
        :references => ""
      )
    ])
  end

  it "renders a list of entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
