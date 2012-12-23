require 'spec_helper'

describe "entries/index" do
  before(:each) do
    assign(:entries, [
      stub_model(Entry,
        :city => "City",
        :state => "State",
        :description => "MyText",
        :airtemp => 1,
        :watertemp => 2,
        :conditions => "Conditions",
        :speciessought => "Speciessought",
        :speciescaught => "Speciescaught",
        :flypattern => "Flypattern",
        :pressure => "Pressure",
        :rating => 3,
        :user => nil
      ),
      stub_model(Entry,
        :city => "City",
        :state => "State",
        :description => "MyText",
        :airtemp => 1,
        :watertemp => 2,
        :conditions => "Conditions",
        :speciessought => "Speciessought",
        :speciescaught => "Speciescaught",
        :flypattern => "Flypattern",
        :pressure => "Pressure",
        :rating => 3,
        :user => nil
      )
    ])
  end

  it "renders a list of entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Conditions".to_s, :count => 2
    assert_select "tr>td", :text => "Speciessought".to_s, :count => 2
    assert_select "tr>td", :text => "Speciescaught".to_s, :count => 2
    assert_select "tr>td", :text => "Flypattern".to_s, :count => 2
    assert_select "tr>td", :text => "Pressure".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
