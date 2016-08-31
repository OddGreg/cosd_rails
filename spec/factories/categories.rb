FactoryGirl.define do
  factory :category do
    book nil
    title "MyString"
    description "MyText"
    slug "MyString"
    image "MyString"
    visible false
  end
end
