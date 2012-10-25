require 'spec_helper'

describe "classifications/show" do
  before(:each) do
    @classification = assign(:classification, stub_model(Classification,
      :descrption => "Descrption"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descrption/)
  end
end
