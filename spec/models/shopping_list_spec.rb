require 'rails_helper'

RSpec.describe ShoppingList, type: :model do
    it {expect(ShoppingList.reflect_on_association(:store).macro).to eql(:belongs_to) }
    it {expect(ShoppingList.reflect_on_association(:user).macro).to eql(:belongs_to) }

end
