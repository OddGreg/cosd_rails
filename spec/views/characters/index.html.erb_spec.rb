require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        :user => nil,
        :group => nil,
        :name => "Name",
        :biography => "MyText",
        :avatar => "Avatar",
        :signature => "MyText",
        :title => "Title",
        :tag_line => "Tag Line",
        :slug => "Slug",
        :active => false
      ),
      Character.create!(
        :user => nil,
        :group => nil,
        :name => "Name",
        :biography => "MyText",
        :avatar => "Avatar",
        :signature => "MyText",
        :title => "Title",
        :tag_line => "Tag Line",
        :slug => "Slug",
        :active => false
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Tag Line".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
