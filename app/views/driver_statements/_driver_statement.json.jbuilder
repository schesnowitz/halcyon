json.extract! driver_statement, :id, :driver_id, :due_date, :paid, :created_at, :updated_at
json.url driver_statement_url(driver_statement, format: :json)
