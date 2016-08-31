require 'rails_helper'

RSpec.describe "stories/index", type: :view do
  before(:each) do
    assign(:stories, [
      Story.create!(
        :section => nil,
        :user => nil,
        :title => "Title",
        :description => "MyText",
        :slug => "Slug",
        :active => false
      ),
      Story.create!(
        :section => nil,
        :user => nil,
        :title => "Title",
        :description => "MyText",
        :slug => "Slug",
        :active => false
      )
    ])
  end

  it "renders a list of stories" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
