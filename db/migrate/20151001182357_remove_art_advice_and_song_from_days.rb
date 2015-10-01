class RemoveArtAdviceAndSongFromDays < ActiveRecord::Migration
  def change
    remove_column :days, :art, :song, :advice
  end
end
