json.extract! customer, :id, :first, :middle, :last, :street, :city, :zip, :created_at, :updated_at
json.url customer_url(customer, format: :json)