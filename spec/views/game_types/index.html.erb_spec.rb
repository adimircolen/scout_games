require 'spec_helper'

describe "game_types/index" do
  before(:each) do
    assign(:game_types, [
      stub_model(GameType,
        :description => "Description"
      ),
      stub_model(GameType,
        :description => "Description"
      )
    ])
  end

  it "renders a list of game_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
