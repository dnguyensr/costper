require 'rails_helper'

RSpec.describe "shopping_lists/show", type: :view do
  before(:each) do
    @user = FactoryGirl.create(:user)
    @store = FactoryGirl.create(:store)
    @shopping_list = assign(:shopping_list, ShoppingList.create!(
      :store => @store,
      :user => @user,
      :date => Time.now,
      :time => Time.now
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
