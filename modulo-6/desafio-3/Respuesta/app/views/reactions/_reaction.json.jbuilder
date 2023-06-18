json.extract! reaction, :id, :reaction_type, :user_id, :post_id, :created_at, :updated_at
json.url reaction_url(reaction, format: :json)
