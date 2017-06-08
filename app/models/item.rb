class Item < ApplicationRecord
  belongs_to :store
  has_many :shopping_list_items
  validates :name, presence: true
end
