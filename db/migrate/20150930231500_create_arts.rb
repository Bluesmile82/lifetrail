class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :url
      t.string :author
      t.string :title
      t.references :day, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
