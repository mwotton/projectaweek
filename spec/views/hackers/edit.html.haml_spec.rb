require 'spec_helper'

describe "hackers/edit.html.haml" do
  before(:each) do
    @hacker = assign(:hacker, stub_model(Hacker,
      :twitter => "MyString"
    ))
  end

  it "renders the edit hacker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hackers_path(@hacker), :method => "post" do
      assert_select "input#hacker_twitter", :name => "hacker[twitter]"
    end
  end
end
