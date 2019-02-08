json.extract! address, :id, :name, :street, :city, :state, :zip, :phone, :created_at, :updated_at
json.url address_url(address, format: :json)
