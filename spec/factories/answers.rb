# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  text        :string
#  day_id      :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    text "MyString"
    day nil
    question nil
  end
end
