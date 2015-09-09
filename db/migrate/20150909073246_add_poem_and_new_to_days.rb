class AddPoemAndNewToDays < ActiveRecord::Migration
  def change
    add_column :days, :poem, :string
    add_column :days, :new, :string
    add_column :days, :artist, :string
  end
end
