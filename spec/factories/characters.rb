FactoryGirl.define do
  factory :character do
    user nil
    group nil
    name "MyString"
    biography "MyText"
    avatar "MyString"
    signature "MyText"
    title "MyString"
    tag_line "MyString"
    slug "MyString"
    active false
  end
end
