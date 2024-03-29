require 'spec_helper'

describe "bases/index" do
  before(:each) do
    assign(:bases, [
      stub_model(Base,
        :descrption => "Descrption"
      ),
      stub_model(Base,
        :descrption => "Descrption"
      )
    ])
  end

  it "renders a list of bases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descrption".to_s, :count => 2
  end
end
