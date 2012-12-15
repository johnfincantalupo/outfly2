require 'spec_helper'

describe "journal_entries/index" do
  before(:each) do
    assign(:journal_entries, [
      stub_model(JournalEntry,
        :loc_city => "Loc City",
        :loc_state => "Loc State",
        :description => "MyText",
        :air_temp => 1,
        :water_temp => 2,
        :conditions => "Conditions",
        :species_sought => "Species Sought",
        :species_caught => "Species Caught",
        :fly_pattern => "Fly Pattern",
        :pressure => "Pressure",
        :rating => 3
      ),
      stub_model(JournalEntry,
        :loc_city => "Loc City",
        :loc_state => "Loc State",
        :description => "MyText",
        :air_temp => 1,
        :water_temp => 2,
        :conditions => "Conditions",
        :species_sought => "Species Sought",
        :species_caught => "Species Caught",
        :fly_pattern => "Fly Pattern",
        :pressure => "Pressure",
        :rating => 3
      )
    ])
  end

  it "renders a list of journal_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Loc City".to_s, :count => 2
    assert_select "tr>td", :text => "Loc State".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Conditions".to_s, :count => 2
    assert_select "tr>td", :text => "Species Sought".to_s, :count => 2
    assert_select "tr>td", :text => "Species Caught".to_s, :count => 2
    assert_select "tr>td", :text => "Fly Pattern".to_s, :count => 2
    assert_select "tr>td", :text => "Pressure".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
