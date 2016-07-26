class CreateThoughtLogs < ActiveRecord::Migration
  def change
    create_table :thought_logs do |t|
      t.string :situation
      t.string :emotion
      t.string :thought
      t.string :response
      t.string :result
      t.string :alternative_thought
      t.string :result
      t.references :day, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
