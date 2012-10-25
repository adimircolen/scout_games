require 'spec_helper'

describe "game_types/edit" do
  before(:each) do
    @game_type = assign(:game_type, stub_model(GameType,
      :description => "MyString"
    ))
  end

  it "renders the edit game_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => game_types_path(@game_type), :method => "post" do
      assert_select "input#game_type_description", :name => "game_type[description]"
    end
  end
end
