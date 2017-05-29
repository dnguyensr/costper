require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :category => "MyString",
      :store => nil,
      :regularprice => 1,
      :saleprice => 1
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "input[name=?]", "item[category]"

      assert_select "input[name=?]", "item[store_id]"

      assert_select "input[name=?]", "item[regularprice]"

      assert_select "input[name=?]", "item[saleprice]"
    end
  end
end
