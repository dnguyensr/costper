json.extract! item, :id, :name, :category, :store_id, :regularprice, :saleprice, :created_at, :updated_at
json.url item_url(item, format: :json)
