class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.references :store, foreign_key: true
      t.integer :regularprice
      t.integer :saleprice

      t.timestamps
    end
  end
end
