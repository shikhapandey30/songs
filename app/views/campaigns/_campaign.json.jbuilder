json.extract! campaign, :id, :artist, :assigned_to, :promoted_by, :target_plays, :status, :plays, :likes, :reposts, :comments, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
