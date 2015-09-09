# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  personal   :boolean
#  text       :string
#  day_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    personal false
    text "MyString"
    references ""
  end
end
