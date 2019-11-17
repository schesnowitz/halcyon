json.extract! trip, :id, :amount, :origin_address, :broker_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
