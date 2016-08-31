require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
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

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

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
