require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    @store = FactoryGirl.create(:store)

    assign(:items, [
      Item.create!(
        :name => "Name",
        :category => "Category",
        :store => @store,
        :regularprice => 2,
        :saleprice => 3
      ),
      Item.create!(
        :name => "Name2",
        :category => "Category",
        :store => @store,
        :regularprice => 2,
        :saleprice => 3
      )
    ])
  end

  skip it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Name2".to_s, :count => 1
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => @store.name.to_s, :count => 2
    assert_select "tr>td", :text => '$2', :count => 2
    assert_select "tr>td", :text => '$3', :count => 2
  end
end
