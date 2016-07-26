class AddPainLevelEveningToDays < ActiveRecord::Migration
  def change
    add_column :days, :pain_level_evening, :integer
  end
end
