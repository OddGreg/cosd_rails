require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      :book => nil,
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString",
      :image => "MyString",
      :visible => false
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_book_id[name=?]", "category[book_id]"

      assert_select "input#category_title[name=?]", "category[title]"

      assert_select "textarea#category_description[name=?]", "category[description]"

      assert_select "input#category_slug[name=?]", "category[slug]"

      assert_select "input#category_image[name=?]", "category[image]"

      assert_select "input#category_visible[name=?]", "category[visible]"
    end
  end
end
