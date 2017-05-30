require 'rails_helper'

RSpec.describe Store, type: :model do
  it "is valid with valid attributes" do
    store = Store.new(name: "name")
    expect(store).to be_valid
  end

  it "is not valid without a name" do
    store = Store.new(name: nil)
    expect(store).to_not be_valid
  end

  it "is not valid with the same name" do
    Store.create(name: "newstore")
    store = Store.new(name: "NEWSTORE")
    expect(store).to_not be_valid
  end
end
