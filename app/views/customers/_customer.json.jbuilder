json.extract! customer, :id, :name, :address, :email, :load_contact, :created_at, :updated_at
json.url customer_url(customer, format: :json)
