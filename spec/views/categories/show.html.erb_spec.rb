require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :book => nil,
      :title => "Title",
      :description => "MyText",
      :slug => "Slug",
      :image => "Image",
      :visible => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/false/)
  end
end
