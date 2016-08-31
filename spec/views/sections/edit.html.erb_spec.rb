require 'rails_helper'

RSpec.describe "sections/edit", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
      :category => nil,
      :title => "MyString",
      :description => "MyText",
      :image => "MyString",
      :slug => "MyString",
      :visible => false
    ))
  end

  it "renders the edit section form" do
    render

    assert_select "form[action=?][method=?]", section_path(@section), "post" do

      assert_select "input#section_category_id[name=?]", "section[category_id]"

      assert_select "input#section_title[name=?]", "section[title]"

      assert_select "textarea#section_description[name=?]", "section[description]"

      assert_select "input#section_image[name=?]", "section[image]"

      assert_select "input#section_slug[name=?]", "section[slug]"

      assert_select "input#section_visible[name=?]", "section[visible]"
    end
  end
end
