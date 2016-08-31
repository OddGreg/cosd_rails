require 'rails_helper'

RSpec.describe "roles/edit", type: :view do
  before(:each) do
    @role = assign(:role, Role.create!(
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString",
      :image => "MyString",
      :enabled => false
    ))
  end

  it "renders the edit role form" do
    render

    assert_select "form[action=?][method=?]", role_path(@role), "post" do

      assert_select "input#role_title[name=?]", "role[title]"

      assert_select "textarea#role_description[name=?]", "role[description]"

      assert_select "input#role_slug[name=?]", "role[slug]"

      assert_select "input#role_image[name=?]", "role[image]"

      assert_select "input#role_enabled[name=?]", "role[enabled]"
    end
  end
end
