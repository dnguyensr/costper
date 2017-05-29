require 'rails_helper'

RSpec.describe "shopping_lists/new", type: :view do
  before(:each) do
    assign(:shopping_list, ShoppingList.new(
      :store => nil,
      :user => nil
    ))
  end

  it "renders new shopping_list form" do
    render

    assert_select "form[action=?][method=?]", shopping_lists_path, "post" do

      assert_select "input[name=?]", "shopping_list[store_id]"

      assert_select "input[name=?]", "shopping_list[user_id]"
    end
  end
end
