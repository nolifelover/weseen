# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :issue do
    fullname "MyString"
    mobile "MyString"
    email "MyString"
    place "MyString"
    time "MyString"
    detail "MyString"
    status 1
    flag 1
  end
end
