require 'rails_helper'

RSpec.describe "permissions/edit", type: :view do
  before(:each) do
    @permission = assign(:permission, Permission.create!(
      :group => nil,
      :role => nil,
      :title => "MyString",
      :active => false,
      :description => "MyText",
      :slug => "MyString"
    ))
  end

  it "renders the edit permission form" do
    render

    assert_select "form[action=?][method=?]", permission_path(@permission), "post" do

      assert_select "input#permission_group_id[name=?]", "permission[group_id]"

      assert_select "input#permission_role_id[name=?]", "permission[role_id]"

      assert_select "input#permission_title[name=?]", "permission[title]"

      assert_select "input#permission_active[name=?]", "permission[active]"

      assert_select "textarea#permission_description[name=?]", "permission[description]"

      assert_select "input#permission_slug[name=?]", "permission[slug]"
    end
  end
end
