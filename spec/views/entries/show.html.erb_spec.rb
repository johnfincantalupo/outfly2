require 'spec_helper'

describe "entries/show" do
  before(:each) do
    @entry = assign(:entry, stub_model(Entry,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Conditions/)
    rendered.should match(/Speciessought/)
    rendered.should match(/Speciescaught/)
    rendered.should match(/Flypattern/)
    rendered.should match(/Pressure/)
    rendered.should match(/3/)
    rendered.should match(//)
  end
end
