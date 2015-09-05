class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.boolean :personal
      t.string :text
      t.references :day, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
