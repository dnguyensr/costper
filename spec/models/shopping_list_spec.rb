require 'rails_helper'

RSpec.describe ShoppingList, type: :model do
  it {expect(ShoppingList.reflect_on_association(:store).macro).to eql(:belongs_to) }
  it {expect(ShoppingList.reflect_on_association(:user).macro).to eql(:belongs_to) }

  it "is valid with valid attributes" do
    store = Store.new
    user = User.new
    shoppinglist= ShoppingList.new(store: store, user: user, date: Time.now)
    expect(shoppinglist).to be_valid
  end

  it "is not valid without a store" do
    user = User.new
    shoppinglist = ShoppingList.new(user: user, date: Time.now)
    expect(shoppinglist).to_not be_valid
  end

  it "is not valid without a user" do
    store = Store.new
    shoppinglist = ShoppingList.new(store: store, date: Time.now)
    expect(shoppinglist).to_not be_valid
  end

  it "is not valid without a date" do
    user = User.new
    store = Store.new
    shoppinglist= ShoppingList.new(store: store, user: user)
    expect(shoppinglist).to_not be_valid
  end
end
