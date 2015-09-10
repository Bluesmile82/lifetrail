class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :city
      t.date :last_date_seen
      t.string :mood

      t.timestamps null: false
    end
  end
end
