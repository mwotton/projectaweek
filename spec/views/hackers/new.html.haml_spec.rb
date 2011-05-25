require 'spec_helper'

describe "hackers/new.html.haml" do
  before(:each) do
    assign(:hacker, stub_model(Hacker,
      :twitter => "MyString"
    ).as_new_record)
  end

  it "renders new hacker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hackers_path, :method => "post" do
      assert_select "input#hacker_twitter", :name => "hacker[twitter]"
    end
  end
end
