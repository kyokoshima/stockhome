json.array!(@stocks) do |stock|
  json.extract! stock, :id, :name, :quantity, :unit
  json.url stock_url(stock, format: :json)
end
