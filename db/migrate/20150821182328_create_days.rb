class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.text :feeling
      t.string :song

      t.timestamps null: false
    end
  end
end
