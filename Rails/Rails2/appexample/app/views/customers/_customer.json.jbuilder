json.extract! customer, :id, :name, :string, :email, :string, :birthday, :date, :obs, :created_at, :updated_at
json.url customer_url(customer, format: :json)
