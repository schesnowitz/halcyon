json.extract! trip_transaction, :id, :address, :pick_up, :drop_off, :order, :trip_id, :created_at, :updated_at
json.url trip_transaction_url(trip_transaction, format: :json)
