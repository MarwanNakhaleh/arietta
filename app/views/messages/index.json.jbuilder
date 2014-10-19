json.array!(@messages) do |message|
  json.extract! message, :id, :sender_id, :content, :date
  json.url message_url(message, format: :json)
end
