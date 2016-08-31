require 'rails_helper'

RSpec.describe "genres/show", type: :view do
  before(:each) do
    @genre = assign(:genre, Genre.create!(
      :category => nil,
      :story => nil,
      :title => "Title",
      :description => "MyText",
      :image => "Image",
      :slug => "Slug",
      :active => false
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
  end
end
