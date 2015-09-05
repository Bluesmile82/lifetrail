# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    personal false
    text "MyString"
    references ""
  end
end
