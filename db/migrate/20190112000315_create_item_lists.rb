class CreateItemLists < ActiveRecord::Migration[5.2]
  def change
    create_table :item_lists do |t|
      t.string :title
      t.text :description
      t.integer :expected_cost
      t.string :image
      t.text :contact

      t.timestamps
    end
  end
end
