require 'rails_helper'

RSpec.describe "shopping_lists/show", type: :view do
  before(:each) do
    @shopping_list = assign(:shopping_list, ShoppingList.create!(
      :store => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
