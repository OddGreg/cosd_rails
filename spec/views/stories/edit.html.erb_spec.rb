require 'rails_helper'

RSpec.describe "stories/edit", type: :view do
  before(:each) do
    @story = assign(:story, Story.create!(
      :section => nil,
      :user => nil,
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString",
      :active => false
    ))
  end

  it "renders the edit story form" do
    render

    assert_select "form[action=?][method=?]", story_path(@story), "post" do

      assert_select "input#story_section_id[name=?]", "story[section_id]"

      assert_select "input#story_user_id[name=?]", "story[user_id]"

      assert_select "input#story_title[name=?]", "story[title]"

      assert_select "textarea#story_description[name=?]", "story[description]"

      assert_select "input#story_slug[name=?]", "story[slug]"

      assert_select "input#story_active[name=?]", "story[active]"
    end
  end
end
