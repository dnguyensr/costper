class ShoppingList < ApplicationRecord
  belongs_to :store
  belongs_to :user
  validates :date, presence: true
end
