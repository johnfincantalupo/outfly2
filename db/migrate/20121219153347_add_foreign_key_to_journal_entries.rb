class AddForeignKeyToJournalEntries < ActiveRecord::Migration
  def up
  	change_table :journal_entries do |t|
  		t.references :user
  	end
  	#add a foreign key
  	execute <<-SQL
  		ALTER TABLE journal_entries
  			ADD CONSTRAINT fk_journal_entries_users
  			FOREIGN KEY (user_id)
  			REFERENCES users(id)
  	SQL
  end

  def down
  	execute <<-SQL
  		ALTER TABLE journal_entries
  			DROP FOREIGN KEY fk_journal_entries_users
  	SQL
  end
end
