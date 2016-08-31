require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :user => nil,
      :story => nil,
      :title => "MyString",
      :body => "MyText",
      :image => "MyString",
      :slug => "MyString",
      :visible => false,
      :poster_ip => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_user_id[name=?]", "post[user_id]"

      assert_select "input#post_story_id[name=?]", "post[story_id]"

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "textarea#post_body[name=?]", "post[body]"

      assert_select "input#post_image[name=?]", "post[image]"

      assert_select "input#post_slug[name=?]", "post[slug]"

      assert_select "input#post_visible[name=?]", "post[visible]"

      assert_select "input#post_poster_ip[name=?]", "post[poster_ip]"
    end
  end
end
