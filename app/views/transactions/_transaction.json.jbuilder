json.extract! transaction, :id, :buyeruserID, :selleruserID, :price, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
