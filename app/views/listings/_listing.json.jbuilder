json.extract! listing, :id, :postcode, :tenant, :created_at, :updated_at
json.url listing_url(listing, format: :json)
