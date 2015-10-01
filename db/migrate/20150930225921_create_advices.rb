class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.string :text
      t.references :day, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
