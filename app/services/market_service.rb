class MarketService
  def markets
    get_url("http://localhost:3000/api/v0/markets")
  end

  def market(id)
    get_url("http://localhost:3000/api/v0/markets/#{id}")
  end

  def get_url(url)
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end