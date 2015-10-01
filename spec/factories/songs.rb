# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  url        :string
#  author     :string
#  title      :string
#  day_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :song do
    url "MyString"
    author "MyString"
    title "MyString"
    day nil
  end
end
