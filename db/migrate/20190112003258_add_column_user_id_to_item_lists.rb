class AddColumnUserIdToItemLists < ActiveRecord::Migration[5.2]
  def change
    add_column :item_lists, :user_id, :integer
  end
end
