require 'rails_helper'

RSpec.describe "shopping_lists/index", type: :view do
  before(:each) do
    @user = FactoryGirl.create(:user)
    @store = FactoryGirl.create(:store)


    assign(:shopping_lists, [
      ShoppingList.create!(
        :store => Store.first,
        :user => User.first,
        :date => Time.now
      ),
      ShoppingList.create!(
        :store => Store.first,
        :user => User.first,
        :date => Time.now
      )
    ])
  end

  skip it "renders a list of shopping_lists" do
    render
    assert_select "tr>td", :text => Store.first.name.to_s, :count => 2
    assert_select "tr>td", :text => User.first.email.to_s, :count => 2
  end
end
