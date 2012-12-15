require 'spec_helper'

describe "journal_entries/show" do
  before(:each) do
    @journal_entry = assign(:journal_entry, stub_model(JournalEntry,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Loc City/)
    rendered.should match(/Loc State/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Conditions/)
    rendered.should match(/Species Sought/)
    rendered.should match(/Species Caught/)
    rendered.should match(/Fly Pattern/)
    rendered.should match(/Pressure/)
    rendered.should match(/3/)
  end
end
