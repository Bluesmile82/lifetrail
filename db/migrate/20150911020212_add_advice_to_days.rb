class AddAdviceToDays < ActiveRecord::Migration
  def change
    add_column :days, :advice, :string
  end
end
