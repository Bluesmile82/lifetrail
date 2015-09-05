# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    text "MyString"
    day nil
    question nil
  end
end
