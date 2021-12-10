json.extract! ownitem, :id, :user_id, :item_id, :sellstatus, :price, :created_at, :updated_at
json.url ownitem_url(ownitem, format: :json)
