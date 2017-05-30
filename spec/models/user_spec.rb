require 'rails_helper'

RSpec.describe User, type: :model do
  it { expect(User.reflect_on_association(:shopping_lists).macro).to eql(:has_many) }
end
