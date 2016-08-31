require 'rails_helper'

RSpec.describe "sections/show", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
      :category => nil,
      :title => "Title",
      :description => "MyText",
      :image => "Image",
      :slug => "Slug",
      :visible => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/false/)
  end
end
