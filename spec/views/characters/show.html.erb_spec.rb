require 'rails_helper'

RSpec.describe "characters/show", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :user => nil,
      :group => nil,
      :name => "Name",
      :biography => "MyText",
      :avatar => "Avatar",
      :signature => "MyText",
      :title => "Title",
      :tag_line => "Tag Line",
      :slug => "Slug",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Tag Line/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/false/)
  end
end
