require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :user => nil,
      :story => nil,
      :title => "Title",
      :body => "MyText",
      :image => "Image",
      :slug => "Slug",
      :visible => false,
      :poster_ip => "Poster Ip"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Poster Ip/)
  end
end
