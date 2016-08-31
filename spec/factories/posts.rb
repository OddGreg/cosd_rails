FactoryGirl.define do
  factory :post do
    user nil
    story nil
    title "MyString"
    body "MyText"
    image "MyString"
    slug "MyString"
    visible false
    poster_ip "MyString"
  end
end
