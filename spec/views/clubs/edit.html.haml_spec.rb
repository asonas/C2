require 'spec_helper'

describe "clubs/edit" do
  before(:each) do
    @club = assign(:club, stub_model(Club,
      :name => "MyString"
    ))
  end

  it "renders the edit club form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clubs_path(@club), :method => "post" do
      assert_select "input#club_name", :name => "club[name]"
    end
  end
end
