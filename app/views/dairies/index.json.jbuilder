json.array!(@dairies) do |dairy|
  json.extract! dairy, :id, :user_id, :exercise_id, :attempts, :weight, :when, :done
  json.url dairy_url(dairy, format: :json)
end
