# == Schema Information
#
# Table name: people
#
#  id             :integer          not null, primary key
#  name           :string
#  city           :string
#  last_date_seen :date
#  mood           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  personality    :string
#  likes          :string
#  birthday       :date
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    name "MyString"
    city "MyString"
    last_date_seen "2015-09-10"
    mood "MyString"
  end
end
