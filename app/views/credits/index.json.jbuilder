json.array!(@credits) do |credit|
  json.extract! credit, :id, :sum, :period
  json.url credit_url(credit, format: :json)
end
