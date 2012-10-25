require 'spec_helper'

describe "classifications/edit" do
  before(:each) do
    @classification = assign(:classification, stub_model(Classification,
      :descrption => "MyString"
    ))
  end

  it "renders the edit classification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => classifications_path(@classification), :method => "post" do
      assert_select "input#classification_descrption", :name => "classification[descrption]"
    end
  end
end
