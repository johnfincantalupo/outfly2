require 'spec_helper'

describe "entries/new" do
  before(:each) do
    assign(:entry, stub_model(Entry,
      :city => "MyString",
      :state => "MyString",
      :description => "MyText",
      :airtemp => 1,
      :watertemp => 1,
      :conditions => "MyString",
      :speciessought => "MyString",
      :speciescaught => "MyString",
      :flypattern => "MyString",
      :pressure => "MyString",
      :rating => 1,
      :user => nil
    ).as_new_record)
  end

  it "renders new entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => entries_path, :method => "post" do
      assert_select "input#entry_city", :name => "entry[city]"
      assert_select "input#entry_state", :name => "entry[state]"
      assert_select "textarea#entry_description", :name => "entry[description]"
      assert_select "input#entry_airtemp", :name => "entry[airtemp]"
      assert_select "input#entry_watertemp", :name => "entry[watertemp]"
      assert_select "input#entry_conditions", :name => "entry[conditions]"
      assert_select "input#entry_speciessought", :name => "entry[speciessought]"
      assert_select "input#entry_speciescaught", :name => "entry[speciescaught]"
      assert_select "input#entry_flypattern", :name => "entry[flypattern]"
      assert_select "input#entry_pressure", :name => "entry[pressure]"
      assert_select "input#entry_rating", :name => "entry[rating]"
      assert_select "input#entry_user", :name => "entry[user]"
    end
  end
end
