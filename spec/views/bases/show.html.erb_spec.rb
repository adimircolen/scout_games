require 'spec_helper'

describe "bases/show" do
  before(:each) do
    @base = assign(:base, stub_model(Base,
      :descrption => "Descrption"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descrption/)
  end
end
