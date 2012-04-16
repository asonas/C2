require 'spec_helper'

describe "clubs/show" do
  before(:each) do
    @club = assign(:club, stub_model(Club,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
