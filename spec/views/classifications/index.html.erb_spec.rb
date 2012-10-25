require 'spec_helper'

describe "classifications/index" do
  before(:each) do
    assign(:classifications, [
      stub_model(Classification,
        :descrption => "Descrption"
      ),
      stub_model(Classification,
        :descrption => "Descrption"
      )
    ])
  end

  it "renders a list of classifications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descrption".to_s, :count => 2
  end
end
