require 'spec_helper'

describe "activities/new" do
  before(:each) do
    assign(:activity, stub_model(Activity,
      :title => "MyString",
      :club_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activities_path, :method => "post" do
      assert_select "input#activity_title", :name => "activity[title]"
      assert_select "input#activity_club_id", :name => "activity[club_id]"
      assert_select "input#activity_user_id", :name => "activity[user_id]"
    end
  end
end
