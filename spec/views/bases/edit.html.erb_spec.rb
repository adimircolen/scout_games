require 'spec_helper'

describe "bases/edit" do
  before(:each) do
    @base = assign(:base, stub_model(Base,
      :descrption => "MyString"
    ))
  end

  it "renders the edit base form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bases_path(@base), :method => "post" do
      assert_select "input#base_descrption", :name => "base[descrption]"
    end
  end
end
