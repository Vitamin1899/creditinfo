json.array!(@admin_credits) do |admin_credit|
  json.extract! admin_credit, :id
  json.url admin_credit_url(admin_credit, format: :json)
end
