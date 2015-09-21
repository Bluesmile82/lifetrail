class AddPersonalityLikesBirthdayToPerson < ActiveRecord::Migration
  def change
    add_column :people, :personality, :string
    add_column :people, :likes, :string
    add_column :people, :birthday, :date
  end
end
