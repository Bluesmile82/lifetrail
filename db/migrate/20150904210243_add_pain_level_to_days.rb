class AddPainLevelToDays < ActiveRecord::Migration
  def change
    add_column :days, :pain_level, :integer
  end
end
