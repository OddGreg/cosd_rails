require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :book => nil,
        :title => "Title",
        :description => "MyText",
        :slug => "Slug",
        :image => "Image",
        :visible => false
      ),
      Category.create!(
        :book => nil,
        :title => "Title",
        :description => "MyText",
        :slug => "Slug",
        :image => "Image",
        :visible => false
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
