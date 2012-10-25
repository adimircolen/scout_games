require 'spec_helper'

describe "materials/index" do
  before(:each) do
    assign(:materials, [
      stub_model(Material,
        :descrption => "Descrption"
      ),
      stub_model(Material,
        :descrption => "Descrption"
      )
    ])
  end

  it "renders a list of materials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descrption".to_s, :count => 2
  end
end
