require 'spec_helper'

describe "bases/new" do
  before(:each) do
    assign(:base, stub_model(Base,
      :descrption => "MyString"
    ).as_new_record)
  end

  it "renders new base form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bases_path, :method => "post" do
      assert_select "input#base_descrption", :name => "base[descrption]"
    end
  end
end
