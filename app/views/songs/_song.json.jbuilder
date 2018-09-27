json.extract! song, :id, :user_id, :url, :created_at, :updated_at
json.url song_url(song, format: :json)
