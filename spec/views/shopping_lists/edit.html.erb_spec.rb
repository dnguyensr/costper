require 'rails_helper'

RSpec.describe "shopping_lists/edit", type: :view do
  before(:each) do
    @user = FactoryGirl.create(:user)
    @store = FactoryGirl.create(:store)
    @shopping_list = assign(:shopping_list, ShoppingList.create!(
      :store => @store,
      :user => @user,
      :date => Time.now
    ))
  end

  skip it "renders the edit shopping_list form" do
    render

    assert_select "form[action=?][method=?]", shopping_list_path(@shopping_list), "post" do

      # assert_select "input[name=?]", "shopping_list[store_id]"

      # assert_select "input[name=?]", "shopping_list[user_id]"
    end
  end
end
