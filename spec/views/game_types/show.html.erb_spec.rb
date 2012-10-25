require 'spec_helper'

describe "game_types/show" do
  before(:each) do
    @game_type = assign(:game_type, stub_model(GameType,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
