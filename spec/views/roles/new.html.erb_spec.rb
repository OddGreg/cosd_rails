require 'rails_helper'

RSpec.describe "roles/new", type: :view do
  before(:each) do
    assign(:role, Role.new(
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString",
      :image => "MyString",
      :enabled => false
    ))
  end

  it "renders new role form" do
    render

    assert_select "form[action=?][method=?]", roles_path, "post" do

      assert_select "input#role_title[name=?]", "role[title]"

      assert_select "textarea#role_description[name=?]", "role[description]"

      assert_select "input#role_slug[name=?]", "role[slug]"

      assert_select "input#role_image[name=?]", "role[image]"

      assert_select "input#role_enabled[name=?]", "role[enabled]"
    end
  end
end
