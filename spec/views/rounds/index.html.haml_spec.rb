require 'spec_helper'

describe "rounds/index.html.haml" do
  before(:each) do
    assign(:rounds, [
      stub_model(Round),
      stub_model(Round)
    ])
  end

  it "renders a list of rounds" do
    render
  end
end
