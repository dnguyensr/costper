require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @store = FactoryGirl.create(:store)
    @stores = [@store]
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :category => "MyString",
      :store => @store,
      :regularprice => 1,
      :saleprice => 1
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "input[name=?]", "item[category]"

      # assert_select "select#stores option[selected]", "item[name]"

      assert_select "input[name=?]", "item[regularprice]"

      assert_select "input[name=?]", "item[saleprice]"
    end
  end
end
