require 'rails_helper'

RSpec.describe "stores/show", type: :view do
  before(:each) do
    @store = assign(:store, Store.create!(
      :name => "Name"
    ))
  end

  skip it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
