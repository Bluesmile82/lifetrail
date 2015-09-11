class AddArtToDays < ActiveRecord::Migration
  def change
    add_column :days, :art, :string
    add_column :days, :art_name, :string
  end
end
