require 'spec_helper'

describe "entries/edit.html.haml" do
  before(:each) do
    @entry = assign(:entry, stub_model(Entry,
      :link => "MyText",
      :references => "",
      :references => ""
    ))
  end

  it "renders the edit entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => entries_path(@entry), :method => "post" do
      assert_select "textarea#entry_link", :name => "entry[link]"
      assert_select "input#entry_references", :name => "entry[references]"
      assert_select "input#entry_references", :name => "entry[references]"
    end
  end
end
