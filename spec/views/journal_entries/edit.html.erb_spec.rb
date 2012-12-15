require 'spec_helper'

describe "journal_entries/edit" do
  before(:each) do
    @journal_entry = assign(:journal_entry, stub_model(JournalEntry,
      :loc_city => "MyString",
      :loc_state => "MyString",
      :description => "MyText",
      :air_temp => 1,
      :water_temp => 1,
      :conditions => "MyString",
      :species_sought => "MyString",
      :species_caught => "MyString",
      :fly_pattern => "MyString",
      :pressure => "MyString",
      :rating => 1
    ))
  end

  it "renders the edit journal_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => journal_entries_path(@journal_entry), :method => "post" do
      assert_select "input#journal_entry_loc_city", :name => "journal_entry[loc_city]"
      assert_select "input#journal_entry_loc_state", :name => "journal_entry[loc_state]"
      assert_select "textarea#journal_entry_description", :name => "journal_entry[description]"
      assert_select "input#journal_entry_air_temp", :name => "journal_entry[air_temp]"
      assert_select "input#journal_entry_water_temp", :name => "journal_entry[water_temp]"
      assert_select "input#journal_entry_conditions", :name => "journal_entry[conditions]"
      assert_select "input#journal_entry_species_sought", :name => "journal_entry[species_sought]"
      assert_select "input#journal_entry_species_caught", :name => "journal_entry[species_caught]"
      assert_select "input#journal_entry_fly_pattern", :name => "journal_entry[fly_pattern]"
      assert_select "input#journal_entry_pressure", :name => "journal_entry[pressure]"
      assert_select "input#journal_entry_rating", :name => "journal_entry[rating]"
    end
  end
end
