require 'rails_helper'

RSpec.describe "groups/new", type: :view do
  before(:each) do
    assign(:group, Group.new(
      :title => "MyString",
      :description => "MyText",
      :slug => "MyText",
      :image => "MyString",
      :enabled => false
    ))
  end

  it "renders new group form" do
    render

    assert_select "form[action=?][method=?]", groups_path, "post" do

      assert_select "input#group_title[name=?]", "group[title]"

      assert_select "textarea#group_description[name=?]", "group[description]"

      assert_select "textarea#group_slug[name=?]", "group[slug]"

      assert_select "input#group_image[name=?]", "group[image]"

      assert_select "input#group_enabled[name=?]", "group[enabled]"
    end
  end
end
