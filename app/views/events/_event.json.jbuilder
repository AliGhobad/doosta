json.extract! event, :id, :event_name, :address, :start_time, :end_time, :description, :photos, :links_to_share, :fees, :available, :capacity, :user_id, :category, :created_at, :updated_at
json.url event_url(event, format: :json)
