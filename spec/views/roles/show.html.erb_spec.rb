require 'rails_helper'

RSpec.describe "roles/show", type: :view do
  before(:each) do
    @role = assign(:role, Role.create!(
      :title => "Title",
      :description => "MyText",
      :slug => "Slug",
      :image => "Image",
      :enabled => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/false/)
  end
end
