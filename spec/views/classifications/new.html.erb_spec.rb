require 'spec_helper'

describe "classifications/new" do
  before(:each) do
    assign(:classification, stub_model(Classification,
      :descrption => "MyString"
    ).as_new_record)
  end

  it "renders new classification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => classifications_path, :method => "post" do
      assert_select "input#classification_descrption", :name => "classification[descrption]"
    end
  end
end
