json.extract! tweet, :id, :description, :username, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
