require 'rails_helper'

RSpec.describe Item, type: :model do
  it { expect(Item.reflect_on_association(:store).macro).to eql(:belongs_to) }

  it "is valid with valid attributes" do
    store = Store.new
    item = Item.new(name: "name", store: store)
    expect(item).to be_valid
  end

  it "is not valid without a name" do
    item = Item.new(name: nil)
    expect(item).to_not be_valid
  end

  it "is not valid without a store" do
    item = Item.new(name: "name")
    expect(item).to_not be_valid
  end
end
