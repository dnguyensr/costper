json.extract! shopping_list, :id, :store_id, :user_id, :date, :time, :created_at, :updated_at
json.url shopping_list_url(shopping_list, format: :json)
