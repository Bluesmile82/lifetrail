class RemoveArtNameArtistFromDays < ActiveRecord::Migration
  def change
    remove_column :days, :art_name, :artist
  end
end
