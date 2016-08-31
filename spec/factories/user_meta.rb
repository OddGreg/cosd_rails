FactoryGirl.define do
  factory :user_metum, class: 'UserMeta' do
    user nil
    pseudonym "MyString"
    image "MyString"
    location "MyString"
    birthday "2016-08-31"
    gender "MyString"
  end
end
