require 'rails_helper'

RSpec.describe "characters/new", type: :view do
  before(:each) do
    assign(:character, Character.new(
      :user => nil,
      :group => nil,
      :name => "MyString",
      :biography => "MyText",
      :avatar => "MyString",
      :signature => "MyText",
      :title => "MyString",
      :tag_line => "MyString",
      :slug => "MyString",
      :active => false
    ))
  end

  it "renders new character form" do
    render

    assert_select "form[action=?][method=?]", characters_path, "post" do

      assert_select "input#character_user_id[name=?]", "character[user_id]"

      assert_select "input#character_group_id[name=?]", "character[group_id]"

      assert_select "input#character_name[name=?]", "character[name]"

      assert_select "textarea#character_biography[name=?]", "character[biography]"

      assert_select "input#character_avatar[name=?]", "character[avatar]"

      assert_select "textarea#character_signature[name=?]", "character[signature]"

      assert_select "input#character_title[name=?]", "character[title]"

      assert_select "input#character_tag_line[name=?]", "character[tag_line]"

      assert_select "input#character_slug[name=?]", "character[slug]"

      assert_select "input#character_active[name=?]", "character[active]"
    end
  end
end
