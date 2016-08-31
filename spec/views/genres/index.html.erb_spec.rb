require 'rails_helper'

RSpec.describe "genres/index", type: :view do
  before(:each) do
    assign(:genres, [
      Genre.create!(
        :category => nil,
        :story => nil,
        :title => "Title",
        :description => "MyText",
        :image => "Image",
        :slug => "Slug",
        :active => false
      ),
      Genre.create!(
        :category => nil,
        :story => nil,
        :title => "Title",
        :description => "MyText",
        :image => "Image",
        :slug => "Slug",
        :active => false
      )
    ])
  end

  it "renders a list of genres" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
