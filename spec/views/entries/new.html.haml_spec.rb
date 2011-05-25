require 'spec_helper'

describe "entries/new.html.haml" do
  before(:each) do
    assign(:entry, stub_model(Entry,
      :link => "MyText",
      :references => "",
      :references => ""
    ).as_new_record)
  end

  it "renders new entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => entries_path, :method => "post" do
      assert_select "textarea#entry_link", :name => "entry[link]"
      assert_select "input#entry_references", :name => "entry[references]"
      assert_select "input#entry_references", :name => "entry[references]"
    end
  end
end
