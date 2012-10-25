require 'spec_helper'

describe "game_types/new" do
  before(:each) do
    assign(:game_type, stub_model(GameType,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new game_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => game_types_path, :method => "post" do
      assert_select "input#game_type_description", :name => "game_type[description]"
    end
  end
end
