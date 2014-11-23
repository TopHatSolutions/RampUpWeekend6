json.array!(@responses) do |response|
  json.extract! response, :id, :user_id, :this_or_that_id, :this, :that
  json.url response_url(response, format: :json)
end
