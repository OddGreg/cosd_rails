require 'rails_helper'

RSpec.describe "permissions/index", type: :view do
  before(:each) do
    assign(:permissions, [
      Permission.create!(
        :group => nil,
        :role => nil,
        :title => "Title",
        :active => false,
        :description => "MyText",
        :slug => "Slug"
      ),
      Permission.create!(
        :group => nil,
        :role => nil,
        :title => "Title",
        :active => false,
        :description => "MyText",
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of permissions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
