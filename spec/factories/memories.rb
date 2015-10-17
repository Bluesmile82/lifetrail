# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :memory do
    person nil
    day nil
    text "MyString"
  end
end
