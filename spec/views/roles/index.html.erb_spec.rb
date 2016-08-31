require 'rails_helper'

RSpec.describe "roles/index", type: :view do
  before(:each) do
    assign(:roles, [
      Role.create!(
        :title => "Title",
        :description => "MyText",
        :slug => "Slug",
        :image => "Image",
        :enabled => false
      ),
      Role.create!(
        :title => "Title",
        :description => "MyText",
        :slug => "Slug",
        :image => "Image",
        :enabled => false
      )
    ])
  end

  it "renders a list of roles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
