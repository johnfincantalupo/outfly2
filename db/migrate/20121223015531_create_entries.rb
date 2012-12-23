class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.date :date
      t.string :city
      t.string :state
      t.text :description
      t.integer :airtemp
      t.integer :watertemp
      t.string :conditions
      t.string :speciessought
      t.string :speciescaught
      t.string :flypattern
      t.string :pressure
      t.integer :rating
      t.references :user

      t.timestamps
    end
    add_index :entries, :user_id
  end
end
