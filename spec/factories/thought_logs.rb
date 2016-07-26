# == Schema Information
#
# Table name: thought_logs
#
#  id                  :integer          not null, primary key
#  situation           :string
#  emotion             :string
#  thought             :string
#  response            :string
#  result              :string
#  alternative_thought :string
#  day_id              :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :thought_log do
    situation "MyString"
    emotion "MyString"
    thought "MyString"
    response "MyString"
    result "MyString"
    alternative_thought "MyString"
    result "MyString"
  end
end
