class AddDreamsToDay < ActiveRecord::Migration
  def change
    add_column :days, :dreams, :string
  end
end
