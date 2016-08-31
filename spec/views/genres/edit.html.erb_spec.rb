require 'rails_helper'

RSpec.describe "genres/edit", type: :view do
  before(:each) do
    @genre = assign(:genre, Genre.create!(
      :category => nil,
      :story => nil,
      :title => "MyString",
      :description => "MyText",
      :image => "MyString",
      :slug => "MyString",
      :active => false
    ))
  end

  it "renders the edit genre form" do
    render

    assert_select "form[action=?][method=?]", genre_path(@genre), "post" do

      assert_select "input#genre_category_id[name=?]", "genre[category_id]"

      assert_select "input#genre_story_id[name=?]", "genre[story_id]"

      assert_select "input#genre_title[name=?]", "genre[title]"

      assert_select "textarea#genre_description[name=?]", "genre[description]"

      assert_select "input#genre_image[name=?]", "genre[image]"

      assert_select "input#genre_slug[name=?]", "genre[slug]"

      assert_select "input#genre_active[name=?]", "genre[active]"
    end
  end
end
