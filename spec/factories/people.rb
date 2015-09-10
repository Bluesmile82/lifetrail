# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    name "MyString"
    city "MyString"
    last_date_seen "2015-09-10"
    mood "MyString"
  end
end
