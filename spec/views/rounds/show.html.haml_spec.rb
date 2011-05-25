require 'spec_helper'

describe "rounds/show.html.haml" do
  before(:each) do
    @round = assign(:round, stub_model(Round))
  end

  it "renders attributes in <p>" do
    render
  end
end
