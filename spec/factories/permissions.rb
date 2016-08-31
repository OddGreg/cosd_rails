FactoryGirl.define do
  factory :permission, class: 'Permissions' do
    group nil
    role nil
    title "MyString"
    active false
    description "MyText"
    slug "MyString"
  end
end
