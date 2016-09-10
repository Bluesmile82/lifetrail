class AddErrorToThoughtLog < ActiveRecord::Migration
  def change
    add_column :thought_logs, :error, :string
    add_column :thought_logs, :times, :integer
  end
end
