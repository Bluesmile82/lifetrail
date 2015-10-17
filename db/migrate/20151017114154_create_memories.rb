class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.references :person, index: true, foreign_key: true
      t.references :day, index: true, foreign_key: true
      t.string :text

      t.timestamps null: false
    end
  end
end
