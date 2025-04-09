json.extract! gossip, :id, :title, :author, :content, :created_at, :updated_at
json.url gossip_url(gossip, format: :json)
