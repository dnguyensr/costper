class Store < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false}
  has_many :shopping_lists
  has_many :items
end
