require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @store = FactoryGirl.create(:store)
    @item = assign(:item, Item.create!(
      :name => "Name",
      :category => "Category",
      :store => @store,
      :regularprice => 2,
      :saleprice => 3
    ))
  end

  skip it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
