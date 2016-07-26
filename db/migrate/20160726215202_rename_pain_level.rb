class RenamePainLevel < ActiveRecord::Migration
  def change
    rename_column :days, :pain_level, :happiness_level
    rename_column :days, :pain_level_evening, :happiness_level_evening
  end
end
