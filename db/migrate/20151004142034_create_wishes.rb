class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :text
      t.references :day, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
