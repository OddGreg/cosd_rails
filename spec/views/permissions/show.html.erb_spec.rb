require 'rails_helper'

RSpec.describe "permissions/show", type: :view do
  before(:each) do
    @permission = assign(:permission, Permission.create!(
      :group => nil,
      :role => nil,
      :title => "Title",
      :active => false,
      :description => "MyText",
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Slug/)
  end
end
