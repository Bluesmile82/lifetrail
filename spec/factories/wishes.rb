# == Schema Information
#
# Table name: wishes
#
#  id         :integer          not null, primary key
#  text       :string
#  day_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wish do
  end
end
