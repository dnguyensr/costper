require 'rails_helper'

RSpec.describe Item, type: :model do
    it { expect(Item.reflect_on_association(:store).macro).to eql(:belongs_to) }

end
