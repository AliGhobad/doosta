json.extract! evenreview, :id, :event_id, :user_id, :user_type, :scores, :comments, :created_at, :updated_at
json.url evenreview_url(evenreview, format: :json)
