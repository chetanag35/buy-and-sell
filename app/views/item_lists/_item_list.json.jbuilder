json.extract! item_list, :id, :title, :description, :expected_cost, :image, :contact, :created_at, :updated_at
json.url item_list_url(item_list, format: :json)
