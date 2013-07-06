# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :issue_progess do
    issue nil
    user nil
    name "MyString"
    remark "MyText"
    status 1
    level 1
    price 1.5
    check_at "2013-07-06 02:07:53"
  end
end
