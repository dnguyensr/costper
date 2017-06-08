class ShoppingList < ApplicationRecord
  belongs_to :store
  belongs_to :user
  has_many :shopping_list_items
  validates :date, presence: true
end
