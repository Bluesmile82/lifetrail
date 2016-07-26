# == Schema Information
#
# Table name: memories
#
#  id         :integer          not null, primary key
#  person_id  :integer
#  day_id     :integer
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :memory do
    person nil
    day nil
    text "MyString"
  end
end
