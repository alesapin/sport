json.array!(@attempts) do |attempt|
  json.extract! attempt, :id, :gymset_id, :weight, :repeats, :done
  json.url attempt_url(attempt, format: :json)
end
