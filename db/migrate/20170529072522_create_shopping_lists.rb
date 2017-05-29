class CreateShoppingLists < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_lists do |t|
      t.references :store, foreign_key: true
      t.references :user, foreign_key: true
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
