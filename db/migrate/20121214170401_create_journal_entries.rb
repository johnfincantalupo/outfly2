class CreateJournalEntries < ActiveRecord::Migration
  def change
    create_table :journal_entries do |t|
      t.date :date
      t.string :loc_city
      t.string :loc_state
      t.text :description
      t.integer :air_temp
      t.integer :water_temp
      t.string :conditions
      t.string :species_sought
      t.string :species_caught
      t.string :fly_pattern
      t.string :pressure
      t.integer :rating

      t.timestamps
    end
  end
end
