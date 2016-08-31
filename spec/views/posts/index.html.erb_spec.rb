require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :user => nil,
        :story => nil,
        :title => "Title",
        :body => "MyText",
        :image => "Image",
        :slug => "Slug",
        :visible => false,
        :poster_ip => "Poster Ip"
      ),
      Post.create!(
        :user => nil,
        :story => nil,
        :title => "Title",
        :body => "MyText",
        :image => "Image",
        :slug => "Slug",
        :visible => false,
        :poster_ip => "Poster Ip"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Poster Ip".to_s, :count => 2
  end
end
