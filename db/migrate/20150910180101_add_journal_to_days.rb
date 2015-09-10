class AddJournalToDays < ActiveRecord::Migration
  def change
    add_column :days, :journal, :string
  end
end
