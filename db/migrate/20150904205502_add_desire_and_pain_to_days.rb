class AddDesireAndPainToDays < ActiveRecord::Migration
  def change
    add_column :days, :desire, :text
    add_column :days, :pain, :text
  end
end
